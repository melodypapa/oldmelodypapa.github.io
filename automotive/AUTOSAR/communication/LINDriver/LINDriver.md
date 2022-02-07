<section id="title">AUTOSAR LIN Driver</section>

# 1. 简介和功能概述

本文介绍了AUTOSAR基础软件模块LIN驱动程序的功能、API和配置。

本文的基础是ISO 17987规范[16]。本文并不会再次描述**ISO 17987**规范中已有的LIN功能，而只会对AUTOSAR相关内容进行介绍。

LIN驱动适用于**ISO 17987**规范中主节点（**master node**）和从节点（**slave node**）。AUTOSAR中的LIN实现可能与ISO 17987规范中描述的LIN驱动程序有偏差，但LIN总线上的行为不会发生变化。它的目的是能够让所有现有的LIN节点以在AUTOSAR LIN实现(即LIN驱动程序)能被重用。

