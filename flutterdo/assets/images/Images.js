// @flow
import {Asset} from "expo";

export default class Images {

    static login = require("./login.jpg");
    static signUp = require("./signUp.jpg");
    static drawer = require("./drawer.jpg");
    static home = require("./home.jpg");
    static lists = require("./lists.jpg");
    static timeline = require("./timeline.jpg");

    static defaultAvatar = require("./avatars/default-avatar.jpg");
    static avatar1 = require("./avatars/avatar-1.jpg");
    static avatar2 = require("./avatars/avatar-2.jpg");
    static avatar3 = require("./avatars/avatar-3.jpg");

    static foodGroup = require("./groups/food.jpg");
    static workGroup = require("./groups/work.jpg");
    static vacationGroup = require("./groups/vacation.jpg");
    static citiesGroup = require("./groups/cities.jpg");

    static downloadAsync(): Promise<*>[] {
        return [
            Asset.fromModule(Images.login).downloadAsync(),
            Asset.fromModule(Images.signUp).downloadAsync(),
            Asset.fromModule(Images.drawer).downloadAsync(),
            Asset.fromModule(Images.home).downloadAsync(),
            Asset.fromModule(Images.lists).downloadAsync(),
            Asset.fromModule(Images.timeline).downloadAsync(),

            Asset.fromModule(Images.defaultAvatar).downloadAsync(),
            Asset.fromModule(Images.avatar1).downloadAsync(),
            Asset.fromModule(Images.avatar2).downloadAsync(),
            Asset.fromModule(Images.avatar3).downloadAsync(),

            Asset.fromModule(Images.foodGroup).downloadAsync(),
            Asset.fromModule(Images.workGroup).downloadAsync(),
            Asset.fromModule(Images.vacationGroup).downloadAsync(),
            Asset.fromModule(Images.citiesGroup).downloadAsync()
        ];
    }
}
