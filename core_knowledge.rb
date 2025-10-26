core_knowledge = [

   # Anatta en le heure de 6:00 A.M., cette vello es rouge. Mais cette l'ecole es ne vert. Sinon route es ne rouge ou vert.
  [[:qui,                                 "Anatta", 0.166666667],
   [:quand,              "en le heure de 6:00 A.M", 0.166666667],
   [:quoi,     "travailles avec il velo a l'ecole", 0.166666667],
   [:cette,                  "Cette velo es rouge", 0.166666667],
   [:maisette,    "Mais cette l'ecole es ne vert.", 0.166666667],
   [:sinon,     "Sinon route es ne rouge ou vert.", 0.166666667]],
   
   # Pierre en le heure de 6:00 A.M., cette vello es rouge. Mais cette l'ecole es ne vert. Sinon route es ne rouge ou vert.
  [[:qui,                                  "Pierre", 0.166666667],
   [:quand,                 "en le heure de 6:00 A", 0.166666667],
   [:quoi,     "travailles avec il velo a l'ecole.", 0.166666667],
   [:cette,                   "Cette velo es rouge", 0.166666667],
   [:sinon,       "Sinon route es ne rouge ou vert", 0.166666667],
   [:maisette,     "Mais cette l'ecole es ne vert.", 0.166666667]],

   # Abe en le heure de 6:00 A.M., cette vello es rouge. Mais cette l'ecole es ne vert. Sinon route es ne rouge ou vert.
  [[:qui,                                    "Abe", 0.166666667],
   [:quand,                "en le heure de 6:00 A", 0.166666667],
   [:quoi,    "travailles avec il velo a l'ecole.", 0.166666667],
   [:cette,                  "Cette velo es rouge", 0.166666667],
   [:maisette,     "Mais cette l'ecole es ne vert", 0.166666667],
   [:sinon,      "Sinon route es ne rouge ou vert", 0.166666667]],

]

@new_probability = []

3.times do
  base_probability = 0.33 * 0.166666667

  row_options = [0, 1, 2]
  col_options = [0, 1, 2, 3, 4, 5]
  #arr_options = [0, 1, 2]

  cur_row = row_options.sample
  cur_col = col_options.sample
  #cur_arr = arr_options.sample

  @current_knowledge = core_knowledge[cur_row][cur_col]

  print [ @current_knowledge[0], @current_knowledge[1], base_probability * @current_knowledge[2] ]
  puts  " "
  
  estimated_probability = base_probability * @current_knowledge[2]
  @new_probability       = @new_probability.append(estimated_probability)
  @array_size            = @new_probability.size.to_i
end

@total_probability = @current_knowledge[2] / @array_size

puts @total_probability
