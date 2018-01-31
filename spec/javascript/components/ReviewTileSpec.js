import ReviewTile from '../../../app/javascript/react/components/ReviewTile';

describe('ReviewTile', () => {
  let wrapper;

  beforeEach(() => {
    wrapper = mount(
      <ReviewTile
        rating="2"
        body="This is a review"
      />
    )
  });

  it('renders a div element with class name of "review-tile" and have rating and body text', () => {
    expect(wrapper.find('.review-tile')).toBePresent();
    expect(wrapper.find('.review-tile')).toMatchSelector('div');
    expect(wrapper.find('.review-rating').text()).toIncludeText('2')
    expect(wrapper.find('.review-body').text()).toIncludeText('This is a review')
  });
});
