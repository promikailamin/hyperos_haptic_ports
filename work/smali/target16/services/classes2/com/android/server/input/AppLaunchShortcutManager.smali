.class public final Lcom/android/server/input/AppLaunchShortcutManager;
.super Ljava/lang/Object;
.source "AppLaunchShortcutManager.java"


# static fields
.field public static final sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

.field public static final sApplicationLaunchKeyRoles:Landroid/util/SparseArray;


# instance fields
.field public final mBookmarks:Ljava/util/Map;

.field public mConsumeSearchKeyUp:Z

.field public final mContext:Landroid/content/Context;

.field public mSearchKeyShortcutPending:Z

.field public mShortcutKeyServices:Landroid/util/LongSparseArray;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 88
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/input/AppLaunchShortcutManager;->sApplicationLaunchKeyRoles:Landroid/util/SparseArray;

    .line 89
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/android/server/input/AppLaunchShortcutManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v2, 0x40

    .line 90
    const-string v3, "android.app.role.BROWSER"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v0, 0x41

    .line 92
    const-string v2, "android.intent.category.APP_EMAIL"

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v0, 0xcf

    .line 94
    const-string v2, "android.intent.category.APP_CONTACTS"

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v0, 0xd0

    .line 96
    const-string v2, "android.intent.category.APP_CALENDAR"

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v0, 0xd1

    .line 98
    const-string v2, "android.intent.category.APP_MUSIC"

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v0, 0xd2

    .line 100
    const-string v2, "android.intent.category.APP_CALCULATOR"

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mSearchKeyShortcutPending:Z

    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mConsumeSearchKeyUp:Z

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mBookmarks:Ljava/util/Map;

    .line 111
    iput-object p1, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 3

    .line 327
    const-string v0, "AppLaunchShortcutManager:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 329
    iget-object p0, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mBookmarks:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputGestureData;

    .line 330
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_12

    .line 332
    :cond_22
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public getBookmarks()Ljava/util/List;
    .registers 2

    .line 323
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mBookmarks:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public handleShortcutService(Landroid/view/KeyEvent;)Z
    .registers 8

    .line 218
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    const v1, 0x11003

    and-int/2addr v0, v1

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_11

    return v3

    .line 222
    :cond_11
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    int-to-long v4, p1

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    or-long/2addr v0, v4

    .line 223
    iget-object p1, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {p1, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/policy/IShortcutService;

    if-eqz p1, :cond_45

    .line 226
    :try_start_24
    invoke-interface {p1, v0, v1}, Lcom/android/internal/policy/IShortcutService;->notifyShortcutKeyPressed(J)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_27} :catch_28

    goto :goto_43

    .line 228
    :catch_28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shortcut key service not found, deleting shortcut code: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "AppShortcutManager"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object p0, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v0, v1}, Landroid/util/LongSparseArray;->delete(J)V

    :goto_43
    const/4 p0, 0x1

    return p0

    :cond_45
    return v3
.end method

.method public init()V
    .registers 1

    .line 115
    invoke-virtual {p0}, Lcom/android/server/input/AppLaunchShortcutManager;->loadShortcuts()V

    return-void
.end method

.method public interceptKey(Landroid/view/KeyEvent;)Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;
    .registers 5

    .line 291
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-eqz v0, :cond_b

    .line 292
    invoke-static {}, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;->-$$Nest$sfgetDO_NOTHING()Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;

    move-result-object p0

    return-object p0

    .line 295
    :cond_b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x54

    const/4 v2, 0x0

    if-ne v0, v1, :cond_32

    .line 297
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_20

    const/4 p1, 0x1

    .line 298
    iput-boolean p1, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mSearchKeyShortcutPending:Z

    .line 299
    iput-boolean v2, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mConsumeSearchKeyUp:Z

    goto :goto_2d

    .line 301
    :cond_20
    iput-boolean v2, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mSearchKeyShortcutPending:Z

    .line 302
    iget-boolean p1, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mConsumeSearchKeyUp:Z

    if-eqz p1, :cond_2d

    .line 303
    iput-boolean v2, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mConsumeSearchKeyUp:Z

    .line 304
    invoke-static {}, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;->-$$Nest$sfgetCONSUME_KEY()Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;

    move-result-object p0

    return-object p0

    .line 307
    :cond_2d
    :goto_2d
    invoke-static {}, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;->-$$Nest$sfgetDO_NOTHING()Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;

    move-result-object p0

    return-object p0

    .line 310
    :cond_32
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3d

    .line 311
    invoke-static {}, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;->-$$Nest$sfgetDO_NOTHING()Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;

    move-result-object p0

    return-object p0

    .line 315
    :cond_3d
    new-instance v0, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;

    invoke-virtual {p0, p1}, Lcom/android/server/input/AppLaunchShortcutManager;->interceptShortcut(Landroid/view/KeyEvent;)Landroid/hardware/input/AppLaunchData;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;-><init>(ZLandroid/hardware/input/AppLaunchData;)V

    return-object v0
.end method

.method public final interceptShortcut(Landroid/view/KeyEvent;)Landroid/hardware/input/AppLaunchData;
    .registers 6

    .line 245
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 246
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    const v2, 0x11003

    and-int/2addr v1, v2

    .line 252
    iget-boolean v2, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mSearchKeyShortcutPending:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_25

    .line 253
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 254
    invoke-virtual {p1, v0}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result p1

    if-eqz p1, :cond_24

    const/4 p1, 0x1

    .line 255
    iput-boolean p1, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mConsumeSearchKeyUp:Z

    const/4 p1, 0x0

    .line 256
    iput-boolean p1, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mSearchKeyShortcutPending:Z

    goto :goto_4e

    :cond_24
    return-object v3

    :cond_25
    if-nez v1, :cond_4e

    .line 263
    sget-object p0, Lcom/android/server/input/AppLaunchShortcutManager;->sApplicationLaunchKeyRoles:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 264
    sget-object p1, Lcom/android/server/input/AppLaunchShortcutManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 265
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 266
    invoke-static {p0}, Landroid/hardware/input/AppLaunchData;->createLaunchDataForRole(Ljava/lang/String;)Landroid/hardware/input/AppLaunchData;

    move-result-object p0

    return-object p0

    .line 267
    :cond_42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4d

    .line 268
    invoke-static {p1}, Landroid/hardware/input/AppLaunchData;->createLaunchDataForCategory(Ljava/lang/String;)Landroid/hardware/input/AppLaunchData;

    move-result-object p0

    return-object p0

    :cond_4d
    return-object v3

    :cond_4e
    :goto_4e
    if-nez v0, :cond_51

    return-object v3

    .line 277
    :cond_51
    iget-object p0, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mBookmarks:Ljava/util/Map;

    .line 278
    invoke-static {v0, v1}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object p1

    .line 277
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/InputGestureData;

    if-nez p0, :cond_60

    return-object v3

    .line 282
    :cond_60
    invoke-virtual {p0}, Landroid/hardware/input/InputGestureData;->getAction()Landroid/hardware/input/InputGestureData$Action;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/input/InputGestureData$Action;->appLaunchData()Landroid/hardware/input/AppLaunchData;

    move-result-object p0

    return-object p0
.end method

.method public final loadShortcuts()V
    .registers 18

    move-object/from16 v0, p0

    .line 120
    const-string v1, "AppShortcutManager"

    :try_start_4
    iget-object v2, v0, Lcom/android/server/input/AppLaunchShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1170004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 121
    const-string v3, "bookmarks"

    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const/4 v3, -0x1

    .line 122
    invoke-static {v3}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v3

    .line 125
    :cond_1b
    :goto_1b
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 127
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_26

    return-void

    .line 131
    :cond_26
    const-string v4, "bookmark"

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3b

    .line 132
    const-string v0, "TAG_BOOKMARK not found"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_38
    move-exception v0

    goto/16 :goto_17d

    .line 136
    :cond_3b
    const-string/jumbo v4, "package"

    const/4 v6, 0x0

    invoke-interface {v2, v6, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 137
    const-string v7, "class"

    invoke-interface {v2, v6, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 138
    const-string v8, "category"

    invoke-interface {v2, v6, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 139
    const-string/jumbo v9, "shift"

    invoke-interface {v2, v6, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 140
    const-string/jumbo v10, "role"

    invoke-interface {v2, v6, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 141
    const-string/jumbo v11, "shortcut"

    invoke-interface {v2, v6, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 144
    iget-object v12, v0, Lcom/android/server/input/AppLaunchShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget-object v13, Lcom/android/internal/R$styleable;->Bookmark:[I

    invoke-virtual {v12, v2, v13}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12
    :try_end_70
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_70} :catch_38
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_70} :catch_38

    const/4 v13, 0x0

    .line 147
    :try_start_71
    invoke-virtual {v12, v13, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    .line 148
    invoke-virtual {v12, v5, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15
    :try_end_79
    .catchall {:try_start_71 .. :try_end_79} :catchall_178

    .line 150
    :try_start_79
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v14, :cond_a2

    .line 152
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_a2

    .line 154
    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    .line 155
    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    new-array v6, v5, [C

    aput-char v12, v6, v13

    .line 154
    invoke-virtual {v3, v6}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v6

    if-eqz v6, :cond_a2

    .line 157
    array-length v12, v6

    const/4 v5, 0x2

    if-ne v12, v5, :cond_a2

    .line 158
    aget-object v5, v6, v13

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v14
    :try_end_a2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_79 .. :try_end_a2} :catch_38
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_a2} :catch_38

    .line 161
    :cond_a2
    const-string v5, " modifierState="

    if-nez v14, :cond_ea

    .line 162
    :try_start_a6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Keycode required for bookmark with category="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " packageName="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " className="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " role="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " shiftName="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " shortcut="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    :cond_ea
    if-nez v15, :cond_106

    if-eqz v9, :cond_100

    .line 171
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v9, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v9, "true"

    .line 172
    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_100

    const/16 v16, 0x1

    goto :goto_102

    :cond_100
    move/from16 v16, v13

    :goto_102
    const/high16 v6, 0x10000

    or-int v15, v16, v6

    .line 177
    :cond_106
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_117

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_117

    .line 178
    invoke-static {v4, v7}, Landroid/hardware/input/AppLaunchData;->createLaunchDataForComponent(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/input/AppLaunchData;

    move-result-object v6

    goto :goto_12e

    .line 179
    :cond_117
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_122

    .line 180
    invoke-static {v8}, Landroid/hardware/input/AppLaunchData;->createLaunchDataForCategory(Ljava/lang/String;)Landroid/hardware/input/AppLaunchData;

    move-result-object v6

    goto :goto_12e

    .line 181
    :cond_122
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12d

    .line 182
    invoke-static {v10}, Landroid/hardware/input/AppLaunchData;->createLaunchDataForRole(Ljava/lang/String;)Landroid/hardware/input/AppLaunchData;

    move-result-object v6

    goto :goto_12e

    :cond_12d
    const/4 v6, 0x0

    :goto_12e
    if-eqz v6, :cond_1b

    .line 185
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adding shortcut "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " keycode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v4, Landroid/hardware/input/InputGestureData$Builder;

    invoke-direct {v4}, Landroid/hardware/input/InputGestureData$Builder;-><init>()V

    .line 189
    invoke-static {v14, v15}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/hardware/input/InputGestureData$Builder;->setTrigger(Landroid/hardware/input/InputGestureData$Trigger;)Landroid/hardware/input/InputGestureData$Builder;

    move-result-object v4

    const/16 v5, 0x33

    .line 190
    invoke-virtual {v4, v5}, Landroid/hardware/input/InputGestureData$Builder;->setKeyGestureType(I)Landroid/hardware/input/InputGestureData$Builder;

    move-result-object v4

    .line 191
    invoke-virtual {v4, v6}, Landroid/hardware/input/InputGestureData$Builder;->setAppLaunchData(Landroid/hardware/input/AppLaunchData;)Landroid/hardware/input/InputGestureData$Builder;

    move-result-object v4

    .line 192
    invoke-virtual {v4}, Landroid/hardware/input/InputGestureData$Builder;->build()Landroid/hardware/input/InputGestureData;

    move-result-object v4

    .line 193
    iget-object v5, v0, Lcom/android/server/input/AppLaunchShortcutManager;->mBookmarks:Ljava/util/Map;

    invoke-virtual {v4}, Landroid/hardware/input/InputGestureData;->getTrigger()Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1b

    :catchall_178
    move-exception v0

    .line 150
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 151
    throw v0
    :try_end_17d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a6 .. :try_end_17d} :catch_38
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_17d} :catch_38

    .line 197
    :goto_17d
    const-string v2, "Got exception parsing bookmarks."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    .registers 5

    .line 203
    iget-object v0, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/IShortcutService;

    if-eqz v0, :cond_31

    .line 204
    invoke-interface {v0}, Lcom/android/internal/policy/IShortcutService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_31

    .line 205
    :cond_15
    new-instance p0, Landroid/os/RemoteException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Key: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", already exists."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 208
    :cond_31
    :goto_31
    iget-object p0, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {p0, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void
.end method
