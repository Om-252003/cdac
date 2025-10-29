#### PRACTICE ####

#1 Display only colums carat, cut, price & color

diamonds %>% select(carat, cut, price, color)

#2 Exclude columns x, y and z

diamonds %>% select(-x,-y,-z)


#3 Arrange by cut and descending prices

diamonds %>% arrange(desc(cut))

#4 Find the top 10 most expensive diamonds

diamonds %>% arrange(desc(cut))%>%slice_head(n = 10)

#5 Create a new column price_per_carat = price/carat

diamonds %>% mutate(
  price_per_carat = price/carat
)

#6 Create a volume column l*b*h:

diamonds %>% mutate(
  volume = x*y*z
)

#7 Create a column expensive, if price > 10000 then TRUE else FALSE

diamonds %>% mutate(
  expensive = price > 10000
)

#8 Compute median price by cut for diamonds with carat < 0.7

diamonds %>% filter(carat == 0.7)%>% group_by(cut)%>% mutate(median_price = median(price))

#9 which clarity has most number of diamonds

diamonds %>%
  count(clarity, sort = TRUE) %>%
  slice_head(n = 1)

# OR 

diamonds %>%	
  group_by(clarity) %>%	
  summarize (count = n()) %>%	
  arrange (desc (count) )

diamonds %>%	
  count (clarity) %>%	
  filter(n == max(n))	

#10 find the average price of "Premium" cut diamonds with color "E" and carat > 1

diamonds %>%
  filter(cut == "Premium", color == "E", carat > 1) %>%
  summarize(avg_price = mean(price))