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

  it('renders a p tag', () => {
    expect(wrapper.find('p')).toBePresent();
  });

  it('should render a p tag with the text property value', () => {
    expect(wrapper.find('p').text()).toBe('Flight');
  });

});
