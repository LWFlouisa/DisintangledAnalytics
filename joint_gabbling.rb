#require "NeoPathfinding"

gabbler = Gabbler.new                     # Create new Gabbler instance.

a = gabbler.learn("[ Who ] Marie Antionette [ What ] Is guillotined in the public square. [ When ] On October 16, 1793. [ Where ] At the scaffold in the city of Paris. [ Why ] Because she said let them eat cake, when the French people needed Bread. [ How ] An angular and sharp eighty pound blade fell on her neck, taking her head right off.")

b = gabbler.learn("[ Who ] Ann Boleyn [ What ] Is beheaded by sword. [ When ] 19 May 1536 [ Where ] On a private scaffold within the castle. [ Why ] She was framed for committing treason against the crown. [ How ] With a sword brandished by a French excutioner imported from Paris.")

c = gabbler.learn("[ Who ] American Civil War [ What ] Is fought between the confederates and union. [ When ] Between 1861 to 1864. [ Where ] In various states split along the Mason-Dixon Line. [ Why ] The simple history is that the South wanted to split from the Union do to slavery. [ How ] Using canons, early trench warfare, and an evolution of early Submarines.")

2.times do
  get_statistics(:cette,    a[0],
                 :maisette, a[1],
                 :sinon,    a[2])
                 
                 dynamic_reward_allocation

  get_statistics(:cette,    b[0],
                 :maisette, b[1],
                 :sinon,    b[2])
                 
                 dynamic_reward_allocation

  get_statistics(:cette,    c[0],
                 :maisette, c[1],
                 :sinon,    c[2])
                 
                 dynamic_reward_allocation

  2.times do
    get_statistics(:cette,          cette("Marie Antionette", "le mort"),
                   :maisette,            maisette("Napoleon", "le mort"),
                   :sinon,    sinon("Anna Boleyn", "le vie", "le drole"))

    dynamic_reward_allocation
  end
end

gabbler.unlearn!                          # Forget Sherlock Holmes.


# I'm confident it is not [ maisette . ] as it has only 0.054450000000000005 probability.
# I'm confident it is not [ maisette . ].
# I'm confident it is not [ maisette . ].
# I'm less unconfident it is not [ maisette . ].
# I'm sure it is [ maisette . ].
# I'm confident it is not [ cette [ Who ] Ann Boleyn [ What ] Is beheaded by sword ] as it has only 0.054450000000000005 probability.
# I'm confident it is not [ cette [ Who ] Ann Boleyn [ What ] Is beheaded by sword ].
# I'm confident it is not [ sinon  [ When ] Between 1861 to 1864 ] as it has only 0.054450000000000005 probability.
# I'm confident it is not [ sinon  [ When ] Between 1861 to 1864 ].
# I'm confident it is not [ sinon  [ When ] Between 1861 to 1864 ].
# I'm less unconfident it is not [ sinon  [ When ] Between 1861 to 1864 ].
# I'm sure it is [ sinon  [ When ] Between 1861 to 1864 ].
# I'm confident it is not [ sinon Sinon Anna Boleyn es ne le vie ou le drole. ] as it has only 0.054450000000000005 probability.
# I'm confident it is not [ sinon Sinon Anna Boleyn es ne le vie ou le drole. ].
# I'm confident it is not [ cette Cette Marie Antionette es le mort.  ] as it has only 0.054450000000000005 probability.
# I'm confident it is not [ cette Cette Marie Antionette es le mort.  ].
# I'm confident it is not [ cette Cette Marie Antionette es le mort.  ].
# I'm less unconfident it is not [ cette Cette Marie Antionette es le mort.  ].
# I'm sure it is [ cette Cette Marie Antionette es le mort.  ].
# I'm confident it is not [ maisette . ] as it has only 0.054450000000000005 probability.
# I'm confident it is not [ maisette . ].
# I'm confident it is not [ maisette . ].
# I'm less unconfident it is not [ maisette . ].
# I'm confident it is not [ maisette . ] as it has only 0.054450000000000005 probability.
# I'm confident it is not [ maisette . ].
# I'm confident it is not [ maisette . ].
# I'm less unconfident it is not [ maisette . ].
# I'm sure it is [ maisette . ].
# I'm confident it is not [ maisette . ] as it has only 0.054450000000000005 probability.
# I'm confident it is not [ maisette . ].
# I'm confident it is not [ maisette . ].
# I'm less unconfident it is not [ maisette . ].
# I'm confident it is not [ maisette Mais cette Napoleon es ne le mort. ] as it has only 0.054450000000000005 probability.
# I'm confident it is not [ maisette Mais cette Napoleon es ne le mort. ].
# I'm confident it is not [ maisette Mais cette Napoleon es ne le mort. ].
# I'm less unconfident it is not [ maisette Mais cette Napoleon es ne le mort. ].
# I'm confident it is not [ sinon Sinon Anna Boleyn es ne le vie ou le drole. ] as it has only 0.054450000000000005 probability.
# I'm confident it is not [ sinon Sinon Anna Boleyn es ne le vie ou le drole. ].
# I'm confident it is not [ sinon Sinon Anna Boleyn es ne le vie ou le drole. ].
# I'm less unconfident it is not [ sinon Sinon Anna Boleyn es ne le vie ou le drole. ].

