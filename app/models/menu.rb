class Menu < ApplicationRecord
  belongs_to :user

  has_many :menu_dishes, -> { order(position: :asc) }, dependent: :destroy

  def shopping_list
    hash = Hash.new
    menu_dishes.each do |menu_dish|
      menu_dish.dish.ingredient_dish.each do |ing_dish|
        if hash[ing_dish.ingredient.name].blank?
          hash[ing_dish.ingredient.name] = ing_dish.quantity
        else
          if without_measurements(hash, ing_dish)
            add_without_measurements(hash, ing_dish)
          else
            add_with_measurements(hash, ing_dish)
          end
        end
      end
    end
    hash.sort.to_h
  end

  def without_measurements(hash, ing_dish)
    hash[ing_dish.ingredient.name].split(" ").first == hash[ing_dish.ingredient.name]
  end

  def add_without_measurements(hash, ing_dish)
    str_1 = hash[ing_dish.ingredient.name].to_f
    str_2 = ing_dish.quantity.split(" ").first.to_f
    str_3 = (str_1 + str_2).to_s
    if str_3.split(".").last == "0"
      str_3 = str_3.to_i.to_s
    end
    hash[ing_dish.ingredient.name] = str_3
  end

  def add_with_measurements(hash, ing_dish)
    str_1 = hash[ing_dish.ingredient.name].split(" ").first.to_f
    str_2 = hash[ing_dish.ingredient.name].split(" ").last
    str_3 = ing_dish.quantity.split(" ").first.to_f
    str_4 = (str_1 + str_3).to_s
    if str_4.split(".").last == "0"
      str_4 = str_4.to_i.to_s
    end
    hash[ing_dish.ingredient.name] = str_4 + " " + str_2
  end
end
