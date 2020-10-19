Stripe.plan :el_g_subscription do |plan|
  plan.name = 'El Gaucho Nyheter'

  plan.amount = 10000

  plan.currency = 'sek'

  plan.interval = 'month'

  plan.interval_count = 1

  plan.trial_period_days = 0
end