import SuperpowerDetailTile from '../../app/javascript/react/components/SuperpowerDetailTile';

describe('SuperpowerDetailTile', () => {
  let wrapper;

  beforeEach(() => {
    wrapper = mount(
      <SuperpowerDetailTile
        name="Super Strength"
        description="I can rip phone books in half"
      />
    )
  });

  it('renders a div element with class name of "superpower-pic"', () => {
    expect(wrapper.find('.superpower-pic')).toBePresent();
    expect(wrapper.find('.superpower-pic')).toMatchSelector('div');
  });

  it('renders a div element with class name of "avg-rating"', () => {
    expect(wrapper.find('.avg-rating')).toBePresent();
    expect(wrapper.find('.avg-rating')).toMatchSelector('div');
  });

  it('renders a div element with class name of "superpower-name and the text"', () => {
    expect(wrapper.find('.superpower-name')).toBePresent();
    expect(wrapper.find('.superpower-name')).toMatchSelector('div');
    expect(wrapper.find('.superpower-name').text()).toEqual('Super Strength')
  });

  it('renders a div element with class name of "superpower-description and the text"', () => {
    expect(wrapper.find('.superpower-description')).toBePresent();
    expect(wrapper.find('.superpower-description')).toMatchSelector('div');
    expect(wrapper.find('.superpower-description').text()).toEqual('I can rip phone books in half')
  });
});
