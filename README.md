# Сatalog app

## Легаси версия. Актуальная [тут][CatalogAppBloc]. Важная с точки зрения истории.

После прохождения теста, весь сентябрь занимался разработкой учебного приложения с использованием старой архитектуры версии Clean, практикуемой в [организации][Pmobi]. Учебное приложения не только позволило заложить во мне фундамент для дальнейшего развития, но произвести апробацию пары архитектруных идей: 
 - Внедрение ORM-слоя. Полуголые запросы в репозиториях предоставляют недостаточную абстракцию с точки зрения бизнес-логики. Хочется оперерировать понятиями и действиями используемые сущностью, например: проверка срока жизни кэша товаров из каталога, добавление товара в корзину. Поиск готовых решений, показал, что ничего интересного отчего стоило бы зависить нет. К тому же достаточно сложная сущность как товар в итоге реализации потянула пару маперов.
 - Внедрение BLoC. Текущая реализация управления состояними не позволяла в должной мере отделить данные от методов связанных с рендером вёрстки в экране. По простому данные были в вёрстке. Другим недостатком была реализация смена состояний посредством callback-ов и вызова set-state для обновления данных.
  В этом репозитории содержится реализация **ORM-слоя** и других функций, что-то я пролобировал, а что коллеги:
  - 

[Pmobi]:<https://pmobi.ru/>
[CatalogAppBloc]:<https://github.com/iebrosalin/mobile/tree/flutter/catalog_app/bloc>
