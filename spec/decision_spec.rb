require('spec_helper')

describe(Decision) do
  context('check for association between decision and circles') do
    it('will create a circle and an associated decision, then check for the link') do
      gc = Circle.create({:circle_name => 'General Circle'})
      farmhouse = gc.decisions.create({:decision_name =>  "Build a farmhouse"})
      expect(farmhouse.circle_id).to(eq(gc.id))
    end
  end
end
