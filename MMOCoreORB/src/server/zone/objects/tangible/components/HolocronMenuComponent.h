/*
* HolocronMenuComponent.h
*
*  Created on: 09/16/2019
*      Author: Toxic
*/

#ifndef HOLOCRONMENUCOMPONENT_H_
#define HOLOCRONMENUCOMPONENT_H_

#include "TangibleObjectMenuComponent.h"

namespace server {
namespace zone {
namespace objects {
namespace scene {
	class SceneObject;
}
}
}
}

using namespace server::zone::objects::scene;

namespace server {
namespace zone {
namespace objects {
namespace creature {
	class CreatureObject;
}
}
}
}

using namespace server::zone::objects::creature;

class HolocronMenuComponent : public TangibleObjectMenuComponent {
public:
	int handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const;
};


#endif /* HOLOCRONMENUCOMPONENT_H_ */
