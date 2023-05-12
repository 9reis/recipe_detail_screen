import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_detail_screen/config/colors.dart';
import 'package:recipe_detail_screen/screens/recipe_detail/widget/recipe_detail_appbar.dart';

class RecipeDetailScreen extends StatelessWidget {
  const RecipeDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          RecipeDetailAppBar(),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Cacao Maca Walnut Milk',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(height: 8),
                  DefaultTextStyle(
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: kSecondaryTextColor),
                    child: Row(
                      children: [
                        Text('Food'),
                        SizedBox(width: 8),
                        Container(
                          width: 5,
                          height: 5,
                          decoration: BoxDecoration(
                              color: kSecondaryTextColor,
                              shape: BoxShape.circle),
                        ),
                        SizedBox(width: 8),
                        Text('60 mins'),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 32,
                            height: 32,
                            margin: EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/image/profile_image.jpg'),
                                fit: BoxFit.cover,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 4),
                                  blurRadius: 4,
                                  color: Colors.black.withOpacity(0.25),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            'Helena Shelby',
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 32,
                            width: 32,
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: kPrimaryColo,
                            ),
                            child: SvgPicture.asset('assets/icons/Heart.svg'),
                          ),
                          Text(
                            '273 Likes ',
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Divider(color: kOutlineColor, height: 1),
                  SizedBox(height: 16),
                  Text(
                    'Description',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'You recipe has been iploaded, you can see it on your profile. You recipe has been uploaded, youu can see it on your',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: kSecondaryTextColor),
                  ),
                  SizedBox(height: 16),
                  Divider(color: kOutlineColor, height: 1),
                  SizedBox(height: 16),
                  Text(
                    'Ingredients',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(height: 16),
                  _buildIngredientItem(context, '4 eggs'),
                  _buildIngredientItem(context, '1/2 Butter'),
                  _buildIngredientItem(context, '1/2 Sugar'),
                  Divider(color: kOutlineColor),
                  SizedBox(height: 16),
                  Text(
                    'Steps',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(height: 16),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        margin: EdgeInsets.only(right: 16),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: kMainTextColor,
                        ),
                        child: Text(
                          '1',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              'You recipe has been iploaded, you can see it on your profile. You recipe has been uploaded, youu can see it on your',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            SizedBox(height: 16),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.network(
                                  'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 32),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildIngredientItem(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Container(
            width: 24,
            height: 24,
            alignment: Alignment.center,
            margin: EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0XFFE3FFF8),
            ),
            child: SvgPicture.asset('assets/icons/check.svg'),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
