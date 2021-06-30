/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.7.17-log : Database - spring-boot-bpmn
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`spring-boot-bpmn` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `spring-boot-bpmn`;

/*Table structure for table `bpmn_model` */

DROP TABLE IF EXISTS `bpmn_model`;

CREATE TABLE `bpmn_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bpmn_imgae` text,
  `bpmn_xml` text,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_update` datetime DEFAULT NULL,
  `model_key` varchar(255) DEFAULT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `user_create` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `bpmn_model` */

insert  into `bpmn_model`(`id`,`bpmn_imgae`,`bpmn_xml`,`gmt_create`,`gmt_update`,`model_key`,`model_name`,`user_create`,`username`) values (1,'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAABOsAAAJYCAYAAAAzEmKlAAAgAElEQVR4Xu3dC5CddZkn4Ldzv3IZLhHUDCCBQVMj6CgRBFZIKFASwPFG4W3dUUEJsisCqyAwDHLzSlgBZ5hZGKtWxYkGBOUyAkOErOI6okEGCPcFVggIuXeS7q2P6rba0JA+6dPnvOf7P6cqFSXnfN/7Pe+vutO/nEtXuBEgQIAAAQIECBAgQIAAAQIECBAgkEKgK8UUhiBAgAABAgQIECBAgAABAgQIECBAIJR1QkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAAECBAgQIECAAAECBAgQIEAgiYCyLskijEGAAAECBAgQIECAAAECBAgQIEBAWScDBAgQIECAAAECBAgQIECAAAECBJIIKOuSLMIYBAgQIECAAAECBAgQIECAAAECBJR1MkCAAIF8AtMj4siIODgiZkTELhExOd+YHTXRCxHxWETcGxG3RcSiiHi0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vANKlaFqyNVQpVpwvxrl6v8O/JCJSy+9dO1xxx3X0pfCXnbZZWOPP/74gS+BfXLgTC1Yp1MQIECAAAECBFoioKxrCbOTEKiFQPXppV87+uijNyxcuLAtL3866qijJi5atKh6+VM1yzdqoKpUSbTEGpUqciVXIyFwaUQc13/gadOm9T766KMrx40bNxLneskx165dG9OnT5/y9NNPD/y76yURMb8lAzgJAQIECBAgQKCFAsq6FmI7FYEOF6h+InsgIl57ww03rD700ENb+uy6Ac+qezwidut7mWmHk4ZSJdEGlXWJllGjUWqUq+qtB34bEX/8u+MFF1yw7pRTTvmT16SO1OrOO++8cZ///OcHvu62+h70F33fl0bqtI5LgAABAgQIEGiLgLKuLexOSqBjBf4mIv7+ta99be+vfvWrldttt11LLmT58uWx9957T3n88cerr1n/JSL+sSUnHvmTKOtG3njIZ6hRqSJXQ976yN+xRrmqsP7k2XXVe9ctXrx41d57790zkpK//OUvRx100EGT+96vtP9U34yIT4/keR2bAAECBAgQINAuAWVdu+Sdl0BnCoyOiPuqZ7a9/e1v33jrrbeuHj26+k8jd6s+VOLAAw+cdMcdd1Qn+o++D5YY0R8MR+5qXnJkpUoLsTd3qhqVKnK1uWW38M9rlKtKbduIeCQipvYTVi+H/cUvfrGq+keckWB95JFHut70pjdNfvbZZwf+nXVF3/uWPjcS53RMAgQIECBAgEC7BZR17d6A8xPoPIG/6vuU04knnHBC94IFC9aN5CVUbyZeval4RKyNiP0j4v+M5PlafGylSovBX+l0NSpV5EquRlLg3RHxLwNPsPvuu/dUb4+w2267NbWwe/DBB7uqDxV68MEHR21yQUdHxA9H8iIdmwABAgQIECDQTgFlXTv1nZtA5wocERHXVO9dNH/+/O6vf/3r60aN2vRnqeFdXPWMupNOOmn8JZdcUr1XXvVMurkRcf3wjpru0UqVRCtR1iVaRo1GqVGuBm7lwoj43MD/sO2228Y111yzunrWdTPW99Of/nT0e97znknPPfeSJ89dEBGnNeMcjkGAAAECBAgQyCqgrMu6GXMRyC/wyYio3jNo1MEHH7xx4cKFq7feeuumTP3888/H3LlzJ91+++3VS1+rou4TEXFFUw6e6yDKukT7qFGpIldyNdIC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s0/XzuPJVQv1C8pVC1WdigABAgQIECBQpoCyrsy9u2oCBPIJvCYibo6IPavRZs6c2TNnzpwNs2bN2njQQQdtnDZtWm++kTtnoscee6zrzjvvHL1kyZLRN9xww5h77rmnvwldGhGzI+KpzrmahiaVq4a4GrtzwblqDMq9CRAgQIAAAQIEGhJQ1jXE5c4ECBAYUYHqgwHOjohPRUT1Mka3kRPojohLI+KLNfhAic0pydXmhJr35yXlqnlqjkSAAAECBAgQIPAnAso6gSBAgEA+gekRcWREHBwRMyJil4iYnG/Mjpqo+oTXxyLi3oi4LSJ+2Pf/O+oihjmsXA0TcJCHy1XzTR2RAAECBAgQIFC8gLKu+AgAIECAAAECBAgQIECAAAECBAgQyCKgrMuyCXMQIECAAAECBAgQIECAAAECBAgUL6CsKz4CAAgQIECAAAECBAgQIECAAAECBLIIKOuybMIcBAgQIECAAAECBAgQIECAAAECxQso64qPAAACBAgQIECAAAECBAgQIECAAIEsAsq6LJswBwECBAgQIECAAAECBAgQIECAQPECyrriIwCAAAECBAgQIECAAAECBAgQIEAgi4CyLssmzEGAAAECBAgQIECAAAECBAgQIFC8gLKu+AgAIECAAAECBAgQIECAAAECBAgQyCKgrMuyCXMQIECAAAECBAgQIECAAAECBAgUL6CsKz4CAAgQIECAAAECBAgQIECAAAECBLIIKOuybMIcBAgQIECAAAECBAgQIECAAAECxQso64qPAAACBAgQIECAAAECBAgQIECAAIEsAsq6LJswBwECBAgQIECAAAECBAgQIECAQPECyrriIwCAAAECBAgQIECAAAECBAgQIEAgi4CyLssmzEGAAAECBAgQIECAAAECBAgQIFC8gLKu+AgAIECAAAECBAgQIECAAAECBAgQyCKgrMuyCXMQIECAAAECBAgQIECAAAECBAgUL6CsKz4CAAgQIECAAAECBAgQIECAAAECBLIIKOuybMIcBAgQIECAAAECBAgQIECAAAECxQso64qPAAACBAgQIECAAAECBAgQIECAAIEsAsq6LJswBwECBAgQIECAAAECBAgQIECAQPECyrriIwCAAAECBAgQIECAAAECBAgQIEAgi4CyLssmzEGAAAECBAgQIECAAAECBAgQIFC8gLKu+AgAIECAAAECBAgQIECAAAECBAgQyCKgrMuyCXMQIECAAAECBAgQIECAAAECBAgUL6CsKz4CAAgQIECAAAECBAgQIECAAAECBLIIKOuybMIcBAgQIECAAAECBAgQIECAAAECxQso64qPAAACBAgQIECAAAECBAgQIECAAIEsAsq6LJswBwECBAgQIECAAAECBAgQIECAQPECyrriIwCAAAECBAgQIECAAAECBAgQIEAgi4CyLssmzEGAAAECBAgQIECAAAECBAgQIFC8gLKu+AgAIECAAAECBAgQIECAAAECBAgQyCKgrMuyCXMQIECAAAECBAgQIECAAAECBAgUL6CsKz4CAAgQIECAAAECBAgQIECAAAECBLIIKOuybMIcBAgQIECAAAECBAgQIECAAAECxQso64qPAAACBAgQIECAAAECBAgQIECAAIEsAsq6LJswBwECBAgQIECAAAECBAgQIECAQPECyrriIwCAAAECBAgQIECAAAECBAgQIEAgi4CyLssmzEGAAAECBAgQIECAAAECBAgQIFC8gLKu+AgAIECAAAECBAgQIECAAAECBAgQyCKgrMuyCXMQIECAAAECBAgQIECAAAECBAgUL6CsKz4CAAgQIECAAAECBAgQIECAAAECBLIIKOuybMIcBAgQIECAAAECBAgQIECAAAECxQso64qPAAACBAgQIECAAAECBAgQIECAAIEsAsq6LJswBwECBAgQIECAAAECBAgQIECAQPECyrriIwCAAAECBAgQIECAAAECBAgQIEAgi4CyLssmzEGAAAECBAgQIECAAAECBAgQIFC8gLKu+AgAIECAAAECBAgQIECAAAECBAgQyCKgrMuyCXMQIECAAAECBAgQIECAAAECBAgUL6CsKz4CAAgQIECAAAECBAgQIECAAAECBLIIKOuybMIcBAgQIECAAAECBAgQIECAAAECxQso64qPAAACBAgQIECAAAECBAgQIECAAIEsAsq6LJswBwECBAgQIECAAAECBAgQIECAQPECyrriIwCAAAECBAgQIECAAAECBAgQIEAgi4CyLssmzEGAAAECBAgQIECAAAECBAgQIFC8gLKu+AgAIECAAAECBAgQIECAAAECBAgQyCKgrMuyCXMQIECAAAECBAgQIECAAAECBAgUL6CsKz4CAAgQIECAAAECBAgQIECAAAECBLIIKOuybMIcBAgQIECAAAECBAgQIECAAAECxQso64qPAAACBAgQIECAAAECBAgQIECAAIEsAsq6LJswBwECBAgQIECAAAECBAgQIECAQPECyrriIwCAAAECBAgQIECAAAECBAgQIEAgi4CyLssmzEGAAAECBAgQIECAAAECBAgQIFC8gLKu+AgAIECAAAECBAgQIECAAAECBAgQyCKgrMuyCXMQIECAAAECBAgQIECAAAECBAgUL6CsKz4CAAgQIECAAAECBAgQIECAAAECBLIIKOuybMIcBAgQIECAAAECBAgQIECAAAECxQso64qPAAACBAgQIECAAAECBAgQIECAAIEsAsq6LJswBwECBAgQIECAAAECBAgQIECAQPECyrriIwCAAAECBAgQIECAAAECBAgQIEAgi4CyLssmzEGAAAECBAgQIECAAAECBAgQIFC8gLKu+AgAIECAAAECBAgQIECAAAECBAgQyCKgrMuyCXMQIECAAAECBAgQIECAAAECBAgUL6CsKz4CAAgQIECAAAECBAgQIECAAAECBLIIKOuybMIcBAgQIECAAAECBAgQIECAAAECxQso64qPAAACBAgQIECAAAECBAgQIECAAIEsAsq6LJswBwECBAgQIECAAAECBAgQIECAQPECyrriIwCAAAECBAgQIECAAAECBAgQIEAgi4CyLssmzEGAAAECBAgQIECAAAECBAgQIFC8gLKu+AgAIECAAAECBAgQIECAAAECBAgQyCKgrMuyCXMQIECAAAECBAgQIECAAAECBAgUL6CsKz4CAAgQIECAAAECBAgQIECAAAECBLIIKOuybMIcBAgQIECAAAECBAgQIECAAAECxQso64qPAAACBAgQIECAAAECBAgQIECAAIEsAsq6LJswBwECBAgQIECAAAECBAgQIECAQPECyrriIwCAAAECBAgQIECAAAECBAgQIEAgi4CyLssmzEGAAAECBAgQIECAAAECBAgQIFC8gLKu+AgAIECAAAECBAgQIECAAAECBAgQyCKgrMuyCXMQIECAAAECBAgQIECAAAECBAgUL6CsKz4CAAgQIECAAAECBAgQIECAAAECBLIIKOuybMIcBAgQIECAAAECBAgQIECAAAECxQso64qPAAACBAgQIECAAAECBAgQIECAAIEsAsq6LJswBwECBAgQIECAAAECBAgQIECAQPECyrriIwCAAAECBAgQIECAAAECBAgQIEAgi4CyLssmzEGAAAECBAgQIECAAAECBAgQIFC8gLKu+AgAIECAAAECBAgQIECAAAECBAgQyCKgrMuyCXMQIECAAAECBAgQIECAAAECBAgUL6CsKz4CAAgQIECAAAECBAgQIECAAAECBLIIKOuybMIcBAgQIECAAAECBAgQIECAAAECxQso64qPAAACBAgQIECAAAECBAgQIECAAIEsAsq6LJswBwECBAgQIECAAAECBAgQIECAQPECyrriIwCAAAECBAgQIECAAAECBAgQIEAgi4CyLssmzEGAAAECBAgQIECAAAECBAgQIFC8gLKu+AgAIECAAAECBAgQIECAAAECBAgQyCKgrMuyCXMQIECAAAECBAgQIECAAAECBAgUL6CsKz4CAAgQIECAAAECBAgQIECAAAECBLIIKOuybMIcBAgQIECAAAECBAgQIECAAAECxQso64qPAAACBAgQIECAAAECBAgQIECAAIEsAsq6LJswBwECBAgQIECAAAECBAgQIECAQPECyrriIwCAAAECBAgQIECAAAECBAgQIEAgi4CyLssmzEGAAAECBAgQIECAAAECBAgQIFC8gLKu+AgAIECAAAECBAgQIECAAAECBAgQyCKgrMuyCXMQIECAAAECBAgQIECAAAECBAgUL6CsKz4CAAgQIECAAAECBAgQIECAAAECBLIIKOuybMIcBAgQIECAAAECBAgQIECAAAECxQso64qPAAACBAgQIECAAAECBAgQIECAAIEsAsq6LJswBwECBAgQIECAAAECBAgQIECAQPECyrriIwCAAAECBAgQIECAAAECBAgQIEAgi4CyLssmzEGAAAECBAgQIECAAAECBAgQIFC8gLKu+AgAIECAAAECBAgQIECAAAECBAgQyCKgrMuyCXMQIECAAAECBAgQIECAAAECBAgUL6CsKz4CAAgQIECAAAECBAgQIECAAAECBLIIKOuybMIcBAgQIECAAAECBAgQIECAAAECxQso64qPAAACBAgQIECAAAECBAgQIECAAIEsAsq6LJswBwECBAgQIECAAAECBAgQIECAQPECyrriIwCAAAECBAgQIECAAAECBAgQIEAgi4CyLssmzEGAAAECBAgQIECAAAECBAgQIFC8gLKu+AgAIECAAAECBAgQIECAAAECBAgQyCKgrMuyCXMQIECAAAECBAgQIECAAAECBAgUL6CsKz4CAAgQIECAAAECBAgQIECAAAECBLIIKOuybMIcBAgQIECAAAECBAgQIECAAAECxQso64qPAAACBAgQIECAAAECBAgQIECAAIEsAsq6LJswBwECBAgQIECAAAECBAgQIECAQPECyrriIwCAAAECBAgQIECAAAECBAgQIEAgi4CyLssmzEGAAAECBAgQIECAAAECBAgQIFC8gLKu+AgAIECAAAECBAgQIECAAAECBAgQyCKgrMuyCXMQIECAAAECBAgQIECAAAECbfyr7gAAETlJREFUBAgUL6CsKz4CAAgQIECAAAECBAgQIECAAAECBLIIKOuybMIcBAgQIECAAAECBAgQIECAAAECxQso64qPAAACBAgQIECAAAECBAgQIECAAIEsAsq6LJswBwECBAgQIECAAAECBAgQIECAQPECyrriIwCAAAECBAgQIECAAAECBAgQIEAgi4CyLssmzEGAAAECBAgQIECAAAECBAgQIFC8gLKu+AgAIECAAAECBAgQIECAAAECBAgQyCKgrMuyCXMQIECAAAECBAgQIECAAAECBAgUL6CsKz4CAAgQIECAAAECBAgQIECAAAECBLIIKOuybMIcBAgQIECAAAECBAgQIECAAAECxQso64qPAAACBAgQIECAAAECBAgQIECAAIEsAsq6LJswBwECBAgQIECAAAECBAgQIECAQPECyrriIwCAAAECBAgQIECAAAECBAgQIEAgi4CyLssmzEGAAAECBAgQIECAAAECBAgQIFC8gLKu+AgAIECAAAECBAgQIECAAAECBAgQyCKgrMuyCXMQIECAAAECBAgQIECAAAECBAgUL6CsKz4CAAgQIECAAAECBAgQIECAAAECBLIIKOuybMIcBAgQIECAAAECBAgQIECAAAECxQso64qPAAACBAgQIECAAAECBAgQIECAAIEsAsq6LJswBwECBAgQIECAAAECBAgQIECAQPECyrriIwCAAAECBAgQIECAAAECBAgQIEAgi4CyLssmzEGAAAECBAgQIECAAAECBAgQIFC8gLKu+AgAIECAAAECBAgQIECAAAECBAgQyCKgrMuyCXMQIECAAAECBAgQIECAAAECBAgUL6CsKz4CAAgQIECAAAECBAgQIECAAAECBLIIKOuybMIcBAgQIECAAAECBAgQIECAAAECxQso64qPAAACBAgQIECAAAECBAgQIECAAIEsAsq6LJswBwECBAgQIECAAAECBAgQIECAQPECyrriIwCAAAECBAgQIECAAAECBAgQIEAgi4CyLssmzEGAAAECBAgQIECAAAECBAgQIFC8gLKu+AgAIECAAAECBAgQIECAAAECBAgQyCKgrMuyCXMQIECAAAECBAgQIECAAAECBAgUL6CsKz4CAAgQIECAAAECBAgQIECAAAECBLIIKOuybMIcBAgQIECAAAECBAgQIECAAAECxQso64qPAAACBAgQIECAAAECBAgQIECAAIEsAsq6LJswBwECBAgQIECAAAECBAgQIECAQPECyrriIwCAAAECBAgQIECAAAECBAgQIEAgi4CyLssmzEGAAAECBAgQIECAAAECBAgQIFC8gLKu+AgAIECAAAECBAgQIECAAAECBAgQyCKgrMuyCXMQIECAAAECBAgQIECAAAECBAgUL6CsKz4CAAgQIECAAAECBAgQIECAAAECBLIIKOuybMIcBAgQIECAAAECBAgQIECAAAECxQso64qPAAACBAgQIECAAAECBAgQIECAAIEsAsq6LJswBwECBAgQIECAAAECBAgQIECAQPECyrriIwCAAAECBAgQIECAAAECBAgQIEAgi4CyLssmzEGAAAECBAgQIECAAAECBAgQIFC8gLKu+AgAIECAAAECBAgQIECAAAECBAgQyCKgrMuyCXMQIECAAAECBAgQIECAAAECBAgUL6CsKz4CAAgQIECAAAECBAgQIECAAAECBLIIKOuybMIcBAgQIECAAAECBAgQIECAAAECxQso64qPAAACBAgQIECAAAECBAgQIECAAIEsAsq6LJswBwECBAgQIECAAAECBAgQIECAQPECyrriIwCAAAECBAgQIECAAAECBAgQIEAgi4CyLssmzEGAAAECBAgQIECAAAECBAgQIFC8gLKu+AgAIECAAAECBAgQIECAAAECBAgQyCKgrMuyCXMQIECAAAECBAgQIECAAAECBAgUL6CsKz4CAAgQIECAAAECBAgQIECAAAECBLIIKOuybMIcBAgQIECAAAECBAgQIECAAAECxQso64qPAAACBAgQIECAAAECBAgQIECAAIEsAsq6LJswBwECBAgQIECAAAECBAgQIECAQPECyrriIwCAAAECBAgQIECAAAECBAgQIEAgi4CyLssmzEGAAAECBAgQIECAAAECBAgQIFC8gLKu+AgAIECAAAECBAgQIECAAAECBAgQyCKgrMuyCXMQIECAAAECBAgQIECAAAECBAgUL6CsKz4CAAgQIECAAAECBAgQIECAAAECBLIIKOuybMIcBAgQIECAAAECBAgQIECAAAECxQso64qPAAACBAgQIECAAAECBAgQIECAAIEsAsq6LJswBwECBAgQIECAAAECBAgQIECAQPECyrriIwCAAAECBAgQIECAAAECBAgQIEAgi4CyLssmzEGAAAECBAgQIECAAAECBAgQIFC8gLKu+AgAIECAAAECBAgQIECAAAECBAgQyCKgrMuyCXMQIECAAAECBAgQIECAAAECBAgUL6CsKz4CAAgQIECAAAECBAgQIECAAAECBLIIKOuybMIcBAgQIECAAAECBAgQIECAAAECxQso64qPAAACBAgQIECAAAECBAgQIECAAIEsAsq6LJswBwECBAgQIECAAAECBAgQIECAQPECyrriIwCAAAECBAgQIECAAAECBAgQIEAgi4CyLssmzEGAAAECBAgQIECAAAECBAgQIFC8gLKu+AgAIECAAAECBAgQIECAAAECBAgQyCKgrMuyCXMQIECAAAECBAgQIECAAAECBAgUL6CsKz4CAAgQIECAAAECBAgQIECAAAECBLIIKOuybMIcBAgQIECAAAECBAgQIECAAAECxQso64qPAAACBAgQIECAAAECBAgQIECAAIEsAsq6LJswBwECBAgQIECAAAECBAgQIECAQPECyrriIwCAAAECBAgQIECAAAECBAgQIEAgi4CyLssmzEGAAAECBAgQIECAAAECBAgQIFC8gLKu+AgAIECAAAECBAgQIECAAAECBAgQyCKgrMuyCXMQIECAAAECBAgQIECAAAECBAgUL6CsKz4CAAgQIECAAAECBAgQIECAAAECBLIIKOuybMIcBAgQIECAAAECBAgQIECAAAECxQso64qPAAACBAgQIECAAAECBAgQIECAAIEsAsq6LJswBwECBAgQIECAAAECBAgQIECAQPECyrriIwCAAAECBAgQIECAAAECBAgQIEAgi4CyLssmzEGAAAECBAgQIECAAAECBAgQIFC8gLKu+AgAIECAAAECBAgQIECAAAECBAgQyCKgrMuyCXMQIECAAAECBAgQIECAAAECBAgUL6CsKz4CAAgQIECAAAECBAgQIECAAAECBLIIKOuybMIcBAgQIECAAAECBAgQIECAAAECxQso64qPAAACBAgQIECAAAECBAgQIECAAIEsAsq6LJswBwECBAgQIECAAAECBAgQIECAQPECyrriIwCAAAECBAgQIECAAAECBAgQIEAgi4CyLssmzEGAAAECBAgQIECAAAECBAgQIFC8gLKu+AgAIECAAAECBAgQIECAAAECBAgQyCKgrMuyCXMQIECAAAECBAgQIECAAAECBAgUL6CsKz4CAAgQIECAAAECBAgQIECAAAECBLIIKOuybMIcBAgQIECAAAECBAgQIECAAAECxQso64qPAAACBAgQIECAAAECBAgQIECAAIEsAsq6LJswBwECBAgQIECAAAECBAgQIECAQPECyrriIwCAAAECBAgQIECAAAECBAgQIEAgi4CyLssmzEGAAAECBAgQIECAAAECBAgQIFC8gLKu+AgAIECAAAECBAgQIECAAAECBAgQyCKgrMuyCXMQIECAAAECBAgQIECAAAECBAgUL6CsKz4CAAgQIECAAAECBAgQIECAAAECBLIIKOuybMIcBAgQIECAAAECBAgQIECAAAECxQso64qPAAACBAgQIECAAAECBAgQIECAAIEsAsq6LJswBwECBAgQIECAAAECBAgQIECAQPECyrriIwCAAAECBAgQIECAAAECBAgQIEAgi4CyLssmzEGAAAECBAgQIECAAAECBAgQIFC8gLKu+AgAIECAAAECBAgQIECAAAECBAgQyCKgrMuyCXMQIECAAAECBAgQIECAAAECBAgUL6CsKz4CAAgQIECAAAECBAgQIECAAAECBLIIKOuybMIcBAgQIECAAAECBAgQIECAAAECxQso64qPAAACBAgQIECAAAECBAgQIECAAIEsAsq6LJswBwECBAgQIECAAAECBAgQIECAQPECyrriIwCAAAECBAgQIECAAAECBAgQIEAgi4CyLssmzEGAAAECBAgQIECAAAECBAgQIFC8gLKu+AgAIECAAAECBAgQIECAAAECBAgQyCKgrMuyCXMQIECAAAECBAgQIECAAAECBAgUL6CsKz4CAAgQIECAAAECBAgQIECAAAECBLIIKOuybMIcBAgQIECAAAECBAgQIECAAAECxQso64qPAAACBAgQIECAAAECBAgQIECAAIEsAsq6LJswBwECBAgQIECAAAECBAgQIECAQPECyrriIwCAAAECBAgQIECAAAECBAgQIEAgi4CyLssmzEGAAAECBAgQIECAAAECBAgQIFC8gLKu+AgAIECAAAECBAgQIECAAAECBAgQyCKgrMuyCXMQIECAAAECBAgQIECAAAECBAgUL6CsKz4CAAgQIECAAAECBAgQIECAAAECBLIIKOuybMIcBAgQIECAAAECBAgQIECAAAECxQso64qPAAACBAgQIECAAAECBAgQIECAAIEsAsq6LJswBwECBAgQIECAAAECBAgQIECAQPECyrriIwCAAAECBAgQIECAAAECBAgQIEAgi4CyLssmzEGAAAECBAgQIECAAAECBAgQIFC8gLKu+AgAIECAAAECBAgQIECAAAECBAgQyCKgrMuyCXMQIECAAAECBAgQIECAAAECBAgUL6CsKz4CAAgQIECAAAECBAgQIECAAAECBLIIKOuybMIcBAgQIECAAAECBAgQIECAAAECxQso64qPAAACBAgQIECAAAECBAgQIECAAIEsAsq6LJswBwECBAgQIECAAAECBAgQIECAQPECyrriIwCAAAECBAgQIECAAAECBAgQIEAgi4CyLssmzEGAAAECBAgQIECAAAECBAgQIFC8gLKu+AgAIECAAAECBAgQIECAAAECBAgQyCKgrMuyCXMQIECAAAECBAgQIECAAAECBAgUL6CsKz4CAAgQIECAAAECBAgQIECAAAECBLIIKOuybMIcBAgQIECAAAECBAgQIECAAAECxQso64qPAAACBAgQIECAAAECBAgQIECAAIEsAsq6LJswBwECBAgQIECAAAECBAgQIECAQPECyrriIwCAAAECBAgQIECAAAECBAgQIEAgi4CyLssmzEGAAAECBAgQIECAAAECBAgQIFC8gLKu+AgAIECAAAECBAgQIECAAAECBAgQyCKgrMuyCXMQIECAAAECBAgQIECAAAECBAgUL6CsKz4CAAgQIECAAAECBAgQIECAAAECBLIIKOuybMIcBAgQIECAAAECBAgQIECAAAECxQso64qPAAACBAgQIECAAAECBAgQIECAAIEsAsq6LJswBwECBAgQIECAAAECBAgQIECAQPECyrriIwCAAAECBAgQIECAAAECBAgQIEAgi4CyLssmzEGAAAECBAgQIECAAAECBAgQIFC8gLKu+AgAIECAAAECBAgQIECAAAECBAgQyCKgrMuyCXMQIECAAAECBAgQIECAAAECBAgUL6CsKz4CAAgQIECAAAECBAgQIECAAAECBLIIKOuybMIcBAgQIECAAAECBAgQIECAAAECxQv8f05eYNH6ALHaAAAAAElFTkSuQmCC','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<bpmn2:definitions xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:bpmn2=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:dc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:di=\"http://www.omg.org/spec/DD/20100524/DI\" id=\"sample-diagram\" targetNamespace=\"http://bpmn.io/schema/bpmn\" xsi:schemaLocation=\"http://www.omg.org/spec/BPMN/20100524/MODEL BPMN20.xsd\">\n  <bpmn2:process id=\"Process_1\">\n    <bpmn2:startEvent id=\"StartEvent_1\">\n      <bpmn2:outgoing>SequenceFlow_1xkya5m</bpmn2:outgoing>\n    </bpmn2:startEvent>\n    <bpmn2:task id=\"Task_0w2dcps\">\n      <bpmn2:incoming>SequenceFlow_1xkya5m</bpmn2:incoming>\n      <bpmn2:outgoing>SequenceFlow_1e57k8u</bpmn2:outgoing>\n    </bpmn2:task>\n    <bpmn2:sequenceFlow id=\"SequenceFlow_1xkya5m\" sourceRef=\"StartEvent_1\" targetRef=\"Task_0w2dcps\" />\n    <bpmn2:task id=\"Task_1yapgfz\">\n      <bpmn2:incoming>SequenceFlow_1e57k8u</bpmn2:incoming>\n      <bpmn2:outgoing>SequenceFlow_01bdttu</bpmn2:outgoing>\n    </bpmn2:task>\n    <bpmn2:sequenceFlow id=\"SequenceFlow_1e57k8u\" sourceRef=\"Task_0w2dcps\" targetRef=\"Task_1yapgfz\" />\n    <bpmn2:endEvent id=\"EndEvent_005n2ra\">\n      <bpmn2:incoming>SequenceFlow_01bdttu</bpmn2:incoming>\n    </bpmn2:endEvent>\n    <bpmn2:sequenceFlow id=\"SequenceFlow_01bdttu\" sourceRef=\"Task_1yapgfz\" targetRef=\"EndEvent_005n2ra\" />\n  </bpmn2:process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_1\">\n    <bpmndi:BPMNPlane id=\"BPMNPlane_1\" bpmnElement=\"Process_1\">\n      <bpmndi:BPMNShape id=\"_BPMNShape_StartEvent_2\" bpmnElement=\"StartEvent_1\">\n        <dc:Bounds x=\"267\" y=\"233\" width=\"36\" height=\"36\" />\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape id=\"Task_0w2dcps_di\" bpmnElement=\"Task_0w2dcps\">\n        <dc:Bounds x=\"353\" y=\"211\" width=\"100\" height=\"80\" />\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge id=\"SequenceFlow_1xkya5m_di\" bpmnElement=\"SequenceFlow_1xkya5m\">\n        <di:waypoint x=\"303\" y=\"251\" />\n        <di:waypoint x=\"353\" y=\"251\" />\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNShape id=\"Task_1yapgfz_di\" bpmnElement=\"Task_1yapgfz\">\n        <dc:Bounds x=\"503\" y=\"211\" width=\"100\" height=\"80\" />\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge id=\"SequenceFlow_1e57k8u_di\" bpmnElement=\"SequenceFlow_1e57k8u\">\n        <di:waypoint x=\"453\" y=\"251\" />\n        <di:waypoint x=\"503\" y=\"251\" />\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNShape id=\"EndEvent_005n2ra_di\" bpmnElement=\"EndEvent_005n2ra\">\n        <dc:Bounds x=\"653\" y=\"233\" width=\"36\" height=\"36\" />\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge id=\"SequenceFlow_01bdttu_di\" bpmnElement=\"SequenceFlow_01bdttu\">\n        <di:waypoint x=\"603\" y=\"251\" />\n        <di:waypoint x=\"653\" y=\"251\" />\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</bpmn2:definitions>\n','2019-05-25 10:49:56','2019-05-25 10:49:56','哈哈哈哈或','哈哈哈哈或',1,'admin');

/*Table structure for table `elfinder_file` */

DROP TABLE IF EXISTS `elfinder_file`;

CREATE TABLE `elfinder_file` (
  `id` int(7) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(7) unsigned NOT NULL,
  `name` varchar(256) NOT NULL,
  `content` longblob NOT NULL,
  `size` int(10) unsigned NOT NULL DEFAULT '0',
  `mtime` int(10) unsigned NOT NULL DEFAULT '0',
  `mime` varchar(256) NOT NULL DEFAULT 'unknown',
  `read` enum('1','0') NOT NULL DEFAULT '1',
  `write` enum('1','0') NOT NULL DEFAULT '1',
  `locked` enum('1','0') NOT NULL DEFAULT '0',
  `hidden` enum('1','0') NOT NULL DEFAULT '0',
  `width` int(5) NOT NULL DEFAULT '0',
  `height` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `parent_name` (`parent_id`,`name`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `elfinder_file` */

insert  into `elfinder_file`(`id`,`parent_id`,`name`,`content`,`size`,`mtime`,`mime`,`read`,`write`,`locked`,`hidden`,`width`,`height`) values (1,0,'DATABASE','',0,0,'directory','1','1','0','0',0,0);

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role_code` varchar(255) NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `gmt_create` datetime NOT NULL,
  `gmt_update` datetime NOT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `user_create` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `sys_user` */

insert  into `sys_user`(`id`,`username`,`password`,`email`,`role_code`,`role_name`,`gmt_create`,`gmt_update`,`nickname`,`user_create`) values (1,'admin','23f90100463d27633c61a711a8bf8ea5072710952454d509','345849402@qq.com','admin','管理员','2019-03-21 14:30:57','2019-03-21 14:30:57','admin',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
