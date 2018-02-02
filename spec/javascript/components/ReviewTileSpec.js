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

  it('renders a div element with class name of "review-tile-component" and have rating and body text', () => {
    expect(wrapper.find('.review-tile-component')).toBePresent();
    expect(wrapper.find('.review-tile-component')).toMatchSelector('div');
    expect(wrapper.find('.review-rating')).toIncludeText('2')
    expect(wrapper.find('.review-body')).toIncludeText('This is a review')
  });
});
