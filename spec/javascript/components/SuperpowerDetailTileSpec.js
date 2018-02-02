import SuperpowerDetailTile from '../../../app/javascript/react/components/SuperpowerDetailTile';

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

  it('renders a div element with class name of "sp-name and the text"', () => {
    expect(wrapper.find('.sp-name')).toBePresent();
    expect(wrapper.find('.sp-name')).toMatchSelector('div');
    expect(wrapper.find('.sp-name').text()).toEqual('Super Strength')
  });

  it('renders a div element with class name of "sp-desc and the text"', () => {
    expect(wrapper.find('.sp-desc')).toBePresent();
    expect(wrapper.find('.sp-desc')).toMatchSelector('div');
    expect(wrapper.find('.sp-desc').text()).toEqual('I can rip phone books in half')
  });
});
