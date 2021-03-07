require_relative './config/environment'

use Rack::MethodOverride
use RestaurantsController
use UsersController
use ReviewsController
run ApplicationController
