import ReviewFormContainer from '../../../app/javascript/react/containers/ReviewFormContainer';
import BodyField from '../../../app/javascript/react/components/BodyField';
import RatingField from '../../../app/javascript/react/components/RatingField';


describe('ReviewFormContainer', () => {
  let wrapper,
      addNewReview;

  beforeEach(() => {
    spyOn(ReviewFormContainer.prototype, 'handleFormSubmit').and.callThrough();
    addNewReview = jasmine.createSpy('addNewReview spy');

    wrapper = mount(
      <ReviewFormContainer
        addNewReview={addNewReview}
      />
    );
  });

  it('renders a BodyField component', () => {
    expect(wrapper.find(BodyField)).toBePresent();
  });

  it('renders 3 RatingField Components', () => {
    expect(wrapper.find(RatingField)).toBePresent();
    expect(wrapper.find(RatingField).length).toBe(3);
  });

  describe('handleFormSubmit', () => {
    it('should be invoked when the onClick property of the submit button is clicked', () => {
      wrapper.find('input#submit').simulate('click');
      expect(ReviewFormContainer.prototype.handleFormSubmit).toHaveBeenCalled();
      expect(addNewReview).toHaveBeenCalled();
    });
  });
});
