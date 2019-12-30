# Mobile
## Цель репозитория
За первые 2 месяца (из 4 месяцев) работы в сфере мобильной разработки были написаны собарнные в 
монорепозитории учебныепроекты. Увы после 2 месяца нагрузка на меня увеличилась на работе из-за
чего на пет проекты перестало оставаться сил. В каждой ветке находится проект с оформленным readme 
(скриншоты, гифки всё как положенно).

Проекты можно разделить на 2 типа:
    - Flutter.
        - [Первое приложение на Flutter, так же тестовое][]
        - [Учебное приложение catalog_app на старой архитектуре][]
        - [Учебное приложение catalog_app на BLoC][]
        - [Мои черновики, использовались не раз] []
        - Исключение, умолчание о нём преступлению подобно проитив самого себя  
    - Android. Поизучал немного в моменты затишья по книге Head First. 
        - [Hello world][]
        - [Beer advicer][]
        - [Messenger][]
        - [Stopwatch] []

 ## Моё представление о следующем пет-проекте
 За пару месяцев работы в режиме жизнь-код я накопил достаточно опыта, впечатлений для следующего 
 пет-проекта. Представьте себе интсаграмм, тик-ток и вы не сильно ошибётесь. Там поле непаханное с 
 UX-задачами, не смотря на то что почти каждый является потребителем подобного контента. 

 Накопились следующие наработки...
 <details>
   <summary>Экран лента новостей</summary>
   Каждая новость занимает весь экран (переход свайпами верх). Имеет
   фото/видео, дату создания, автора. 
   <details>
     <summary>Демо тёмная версия</summary>
     ![][]
     </details>   
   <details>
     <summary>Светлая версия</summary>
     ![][]
    </details>   
       
   <details>
     <summary>Несколько сценариев взаимодействия с экраном</summary>
     - Тапаешь (нажатие пальчиком о экрану) на автарку, имя автора автора переходишь в его профиль.
     - Пост оскорбляет твои чувства, тогда можно пожаловаться на него.
     - Хочется начать чат с автором, есть кнопочка для этого.
     - Лень свайпать, можно потрясти телефон и он сам перейдёт на следующий пост.
     </details>
 </details>
 
 <details>
   <summary>Экран профиля</summary>
      <details>
        <summary>Тёмная версия</summary>
        ![][]
       </details>  
      <details>
        <summary>Светлая версия</summary>
        ![][]
      </details> 
      <details>
        <summary>Дополнительная информация</summary>
        Скролируемый экран, имеющий разные виды и поведенияв зависимости от типа 
        пользователяи (мой и чужой профиль) и поведение от наличии авторизации. Неавторизованные 
        пользователи при совершении действий требующих авторизации открывают экран авторизации.  
        Свой экран профиля содержал следующее: 
           - Автарку.
           - Текущее местоположение
              - Неавторизованный пользователь видит вымышленное местонахождение пользователя.
              - В своём профиле пользователь видит город, страну где он находится.
              - В чужом профиле город чужого пользователя и расстояние между своим пользователем и 
              просматриваемым пользователе.
        - Подарки.  В моём понимании это сообщение в чате с пользователем оформленные особенным образом.
        Эти сообщение отличаются рядом дополнительных настроек, например: цвет фона, звук при открытии подарка, 
        тема сообщения(совокупность тематических преднастроек). Если есть подарки, то иконка 
        показывается иначе нет. При клике на происходит переход на экран со списком подарков.
        - Кол-во подписок, подписчиков - кликабельны и ведут на на соответствующие страницы списки
        - В своём профиле есть бургер меню для вызова диалогового окна для выбора следующей страницы.
         Отсюда пользователь точно сможет попасть на страницу редактирования профиля пользователя, 
         также другие настройки придётся прятать тут.
        - Посты пользователя с подгрузкой по скролу. 
       </details>  
 </details>
 <details>
   <summary>Экран редактирования профиля</summary>
 <details>
        <summary>Тёмная версия</summary>
        ![][]
       </details>  
      <details>
        <summary>Светлая версия</summary>
        ![][]
      </details> 
      <details>
       <summary>Дополнительная информация</summary>
       Стандартный экран редактирования. Аватар кликабелен и вызывает диалоговое окно с выбором источника аватрки.
       Текстовые поля выполнены в стиле материал, с автовалидацией.
       </details>  
 </details>
 
 ## Технологичесикие вызовы нового пет-проекта
 С частью задач я сталкивался и имею информации о их решении, но общее и универсальное пока не 
 найдено и не написано. Если придёт время, то придётся похоронить не один вечер на решение 
 перечисленных задач:
 - Авторизации с последующем контролем стэка экранов.
 - Внутрестраничная навигация, отказ от push-экранов, для того чтобы экран мог сам стать стеком 
 содержащийся внутри основного стека приложения. Живой пример можно увидеть в инстаграмме, он
  буквально на этом построен.
 - Алгоритм предзагрузки контента для ленты.
 - Чаты.
 - Уведомления.
 
 
 []:<>