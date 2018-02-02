import SuperpowerTile from '../../../app/javascript/react/components/SuperpowerTile'

describe('SuperpowerTile', () => {
  let wrapper,
      name;

  beforeEach(() => {
    wrapper = mount(
      <SuperpowerTile
        name = 'Flight'
      />
    )
  });

  it('renders a div tag', () => {
    expect(wrapper.find('div')).toBePresent();
  });

  it('should render a div tag with the text property value', () => {
    expect(wrapper.find('div').text()).toBe('Flight');
  });

});
