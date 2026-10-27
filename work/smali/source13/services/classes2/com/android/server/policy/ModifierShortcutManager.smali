.class Lcom/android/server/policy/ModifierShortcutManager;
.super Ljava/lang/Object;
.source "ModifierShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/ModifierShortcutManager$ShortcutInfo;
    }
.end annotation


# static fields
.field private static final ATTRIBUTE_CATEGORY:Ljava/lang/String; = "category"

.field private static final ATTRIBUTE_CLASS:Ljava/lang/String; = "class"

.field private static final ATTRIBUTE_PACKAGE:Ljava/lang/String; = "package"

.field private static final ATTRIBUTE_SHIFT:Ljava/lang/String; = "shift"

.field private static final ATTRIBUTE_SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final TAG_BOOKMARK:Ljava/lang/String; = "bookmark"

.field private static final TAG_BOOKMARKS:Ljava/lang/String; = "bookmarks"

.field static sApplicationLaunchKeyCategories:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConsumeSearchKeyUp:Z

.field private final mContext:Landroid/content/Context;

.field private final mIntentShortcuts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/policy/ModifierShortcutManager$ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchKeyShortcutPending:Z

.field private final mShiftShortcuts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/policy/ModifierShortcutManager$ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mShortcutKeyServices:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/android/internal/policy/IShortcutService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 75
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/policy/ModifierShortcutManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    .line 76
    const/16 v1, 0x40

    const-string v2, "android.intent.category.APP_BROWSER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 78
    sget-object v0, Lcom/android/server/policy/ModifierShortcutManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0x41

    const-string v2, "android.intent.category.APP_EMAIL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 80
    sget-object v0, Lcom/android/server/policy/ModifierShortcutManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0xcf

    const-string v2, "android.intent.category.APP_CONTACTS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 82
    sget-object v0, Lcom/android/server/policy/ModifierShortcutManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0xd0

    const-string v2, "android.intent.category.APP_CALENDAR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 84
    sget-object v0, Lcom/android/server/policy/ModifierShortcutManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0xd1

    const-string v2, "android.intent.category.APP_MUSIC"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 86
    sget-object v0, Lcom/android/server/policy/ModifierShortcutManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0xd2

    const-string v2, "android.intent.category.APP_CALCULATOR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 88
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mIntentShortcuts:Landroid/util/SparseArray;

    .line 63
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mShiftShortcuts:Landroid/util/SparseArray;

    .line 65
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mSearchKeyShortcutPending:Z

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mConsumeSearchKeyUp:Z

    .line 95
    iput-object p1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mContext:Landroid/content/Context;

    .line 96
    invoke-direct {p0}, Lcom/android/server/policy/ModifierShortcutManager;->loadShortcuts()V

    .line 97
    return-void
.end method

.method private getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;
    .registers 10
    .param p1, "kcm"    # Landroid/view/KeyCharacterMap;
    .param p2, "keyCode"    # I
    .param p3, "metaState"    # I

    .line 116
    const/4 v0, 0x1

    invoke-static {p3, v0}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    .line 117
    .local v0, "isShiftOn":Z
    const/4 v1, 0x0

    if-nez v0, :cond_f

    invoke-static {p3}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v2

    if-nez v2, :cond_f

    .line 118
    return-object v1

    .line 121
    :cond_f
    const/4 v2, 0x0

    .line 124
    .local v2, "shortcut":Lcom/android/server/policy/ModifierShortcutManager$ShortcutInfo;
    if-eqz v0, :cond_15

    iget-object v3, p0, Lcom/android/server/policy/ModifierShortcutManager;->mShiftShortcuts:Landroid/util/SparseArray;

    goto :goto_17

    :cond_15
    iget-object v3, p0, Lcom/android/server/policy/ModifierShortcutManager;->mIntentShortcuts:Landroid/util/SparseArray;

    .line 127
    .local v3, "shortcutMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/policy/ModifierShortcutManager$ShortcutInfo;>;"
    :goto_17
    invoke-virtual {p1, p2, p3}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v4

    .line 128
    .local v4, "shortcutChar":I
    if-eqz v4, :cond_24

    .line 129
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    check-cast v2, Lcom/android/server/policy/ModifierShortcutManager$ShortcutInfo;

    .line 133
    :cond_24
    if-nez v2, :cond_37

    .line 134
    invoke-virtual {p1, p2}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    .line 135
    if-eqz v4, :cond_37

    .line 136
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    check-cast v2, Lcom/android/server/policy/ModifierShortcutManager$ShortcutInfo;

    .line 140
    :cond_37
    if-eqz v2, :cond_3b

    iget-object v1, v2, Lcom/android/server/policy/ModifierShortcutManager$ShortcutInfo;->intent:Landroid/content/Intent;

    :cond_3b
    return-object v1
.end method

.method private handleIntentShortcut(Landroid/view/KeyCharacterMap;II)Z
    .registers 11
    .param p1, "kcm"    # Landroid/view/KeyCharacterMap;
    .param p2, "keyCode"    # I
    .param p3, "metaState"    # I

    .line 286
    iget-boolean v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mSearchKeyShortcutPending:Z

    const-string v1, "WindowManager"

    const/high16 v2, 0x10000000

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_16

    .line 287
    invoke-virtual {p1, p2}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 288
    iput-boolean v3, p0, Lcom/android/server/policy/ModifierShortcutManager;->mConsumeSearchKeyUp:Z

    .line 289
    iput-boolean v4, p0, Lcom/android/server/policy/ModifierShortcutManager;->mSearchKeyShortcutPending:Z

    goto :goto_1f

    .line 291
    :cond_15
    return v4

    .line 293
    :cond_16
    const/high16 v0, 0x70000

    and-int/2addr v0, p3

    if-eqz v0, :cond_4d

    .line 295
    const v0, -0x70001

    and-int/2addr p3, v0

    .line 316
    :goto_1f
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/ModifierShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v0

    .line 317
    .local v0, "shortcutIntent":Landroid/content/Intent;
    if-eqz v0, :cond_4c

    .line 318
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 320
    :try_start_28
    iget-object v2, p0, Lcom/android/server/policy/ModifierShortcutManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_28 .. :try_end_2f} :catch_30

    .line 325
    goto :goto_4b

    .line 321
    :catch_30
    move-exception v2

    .line 322
    .local v2, "ex":Landroid/content/ActivityNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dropping shortcut key combination because the activity to which it is registered was not found: META+ or SEARCH"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 324
    invoke-static {p2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 322
    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    .end local v2    # "ex":Landroid/content/ActivityNotFoundException;
    :goto_4b
    return v3

    .line 328
    :cond_4c
    return v4

    .line 298
    .end local v0    # "shortcutIntent":Landroid/content/Intent;
    :cond_4d
    sget-object v0, Lcom/android/server/policy/ModifierShortcutManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 299
    .local v0, "category":Ljava/lang/String;
    if-eqz v0, :cond_8e

    .line 300
    const-string v4, "android.intent.action.MAIN"

    invoke-static {v4, v0}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 301
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 303
    :try_start_60
    iget-object v2, p0, Lcom/android/server/policy/ModifierShortcutManager;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_67
    .catch Landroid/content/ActivityNotFoundException; {:try_start_60 .. :try_end_67} :catch_68

    .line 309
    goto :goto_8d

    .line 304
    :catch_68
    move-exception v2

    .line 305
    .restart local v2    # "ex":Landroid/content/ActivityNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dropping application launch key because the activity to which it is registered was not found: keyCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 307
    invoke-static {p2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", category="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 305
    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .end local v2    # "ex":Landroid/content/ActivityNotFoundException;
    :goto_8d
    return v3

    .line 312
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_8e
    return v4
.end method

.method private handleShortcutService(II)Z
    .registers 8
    .param p1, "keyCode"    # I
    .param p2, "metaState"    # I

    .line 243
    int-to-long v0, p1

    .line 244
    .local v0, "shortcutCode":J
    and-int/lit16 v2, p2, 0x1000

    if-eqz v2, :cond_b

    .line 245
    const-wide v2, 0x100000000000L

    or-long/2addr v0, v2

    .line 248
    :cond_b
    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_15

    .line 249
    const-wide v2, 0x200000000L

    or-long/2addr v0, v2

    .line 252
    :cond_15
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_1f

    .line 253
    const-wide v2, 0x100000000L

    or-long/2addr v0, v2

    .line 256
    :cond_1f
    const/high16 v2, 0x10000

    and-int/2addr v2, p2

    if-eqz v2, :cond_27

    .line 257
    const-wide/high16 v2, 0x1000000000000L

    or-long/2addr v0, v2

    .line 260
    :cond_27
    iget-object v2, p0, Lcom/android/server/policy/ModifierShortcutManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/IShortcutService;

    .line 261
    .local v2, "shortcutService":Lcom/android/internal/policy/IShortcutService;
    if-eqz v2, :cond_3d

    .line 263
    :try_start_31
    invoke-interface {v2, v0, v1}, Lcom/android/internal/policy/IShortcutService;->notifyShortcutKeyPressed(J)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_34} :catch_35

    .line 266
    goto :goto_3b

    .line 264
    :catch_35
    move-exception v3

    .line 265
    .local v3, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/policy/ModifierShortcutManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->delete(J)V

    .line 267
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_3b
    const/4 v3, 0x1

    return v3

    .line 269
    :cond_3d
    const/4 v3, 0x0

    return v3
.end method

.method private loadShortcuts()V
    .registers 20

    .line 144
    move-object/from16 v1, p0

    const-string v2, "WindowManager"

    iget-object v0, v1, Lcom/android/server/policy/ModifierShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 146
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_a
    iget-object v0, v1, Lcom/android/server/policy/ModifierShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x1170004

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    move-object v4, v0

    .line 148
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    const-string v0, "bookmarks"

    invoke-static {v4, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 151
    :goto_1d
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 153
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_28

    .line 154
    goto :goto_35

    .line 157
    :cond_28
    const-string v0, "bookmark"

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 158
    nop

    .line 223
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    :goto_35
    goto/16 :goto_153

    .line 161
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_37
    const-string/jumbo v0, "package"

    const/4 v6, 0x0

    invoke-interface {v4, v6, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 162
    .local v7, "packageName":Ljava/lang/String;
    const-string v0, "class"

    invoke-interface {v4, v6, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 163
    .local v8, "className":Ljava/lang/String;
    const-string/jumbo v0, "shortcut"

    invoke-interface {v4, v6, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 164
    .local v9, "shortcutName":Ljava/lang/String;
    const-string v0, "category"

    invoke-interface {v4, v6, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 165
    .local v10, "categoryName":Ljava/lang/String;
    const-string/jumbo v0, "shift"

    invoke-interface {v4, v6, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 167
    .local v6, "shiftName":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_62
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_62} :catch_14d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_62} :catch_14d

    const-string v11, "/"

    if-eqz v0, :cond_85

    .line 168
    :try_start_66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to get shortcut for: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    goto :goto_1d

    .line 172
    :cond_85
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v13, v0

    .line 173
    .local v13, "shortcutChar":I
    if-eqz v6, :cond_98

    const-string/jumbo v0, "true"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_94
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_66 .. :try_end_94} :catch_14d
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_94} :catch_14d

    if-eqz v0, :cond_98

    move v0, v5

    goto :goto_99

    :cond_98
    move v0, v12

    :goto_99
    move v14, v0

    .line 177
    .local v14, "isShiftShortcut":Z
    const-string v15, "android.intent.action.MAIN"

    if-eqz v7, :cond_112

    if-eqz v8, :cond_112

    .line 178
    const/16 v16, 0x0

    .line 179
    .local v16, "info":Landroid/content/pm/ActivityInfo;
    :try_start_a2
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a2 .. :try_end_a7} :catch_14d
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a7} :catch_14d

    move-object/from16 v17, v0

    .line 181
    .local v17, "componentName":Landroid/content/ComponentName;
    const v12, 0xc2000

    move-object/from16 v5, v17

    .end local v17    # "componentName":Landroid/content/ComponentName;
    .local v5, "componentName":Landroid/content/ComponentName;
    :try_start_ae
    invoke-virtual {v3, v5, v12}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_b2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_ae .. :try_end_b2} :catch_b3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ae .. :try_end_b2} :catch_14d
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b2} :catch_14d

    .line 199
    .end local v16    # "info":Landroid/content/pm/ActivityInfo;
    .local v0, "info":Landroid/content/pm/ActivityInfo;
    goto :goto_d2

    .line 185
    .end local v0    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v16    # "info":Landroid/content/pm/ActivityInfo;
    :catch_b3
    move-exception v0

    move-object/from16 v17, v0

    .line 186
    .local v17, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v12, 0x1

    :try_start_b7
    new-array v0, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v7, v0, v12

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    .line 188
    .local v18, "packages":[Ljava/lang/String;
    new-instance v0, Landroid/content/ComponentName;

    aget-object v12, v18, v12

    invoke-direct {v0, v12, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b7 .. :try_end_c9} :catch_14d
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_c9} :catch_14d

    move-object v5, v0

    .line 190
    const v12, 0xc2000

    :try_start_cd
    invoke-virtual {v3, v5, v12}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_d1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_cd .. :try_end_d1} :catch_e9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_cd .. :try_end_d1} :catch_14d
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_d1} :catch_14d

    .line 198
    .end local v16    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v0    # "info":Landroid/content/pm/ActivityInfo;
    nop

    .line 201
    .end local v17    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v18    # "packages":[Ljava/lang/String;
    :goto_d2
    :try_start_d2
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    .local v11, "intent":Landroid/content/Intent;
    const-string v12, "android.intent.category.LAUNCHER"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    invoke-virtual {v11, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 204
    invoke-virtual {v0, v3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v0, v12

    .line 205
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .local v0, "title":Ljava/lang/String;
    goto :goto_11b

    .line 194
    .end local v0    # "title":Ljava/lang/String;
    .end local v11    # "intent":Landroid/content/Intent;
    .restart local v5    # "componentName":Landroid/content/ComponentName;
    .restart local v16    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v17    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v18    # "packages":[Ljava/lang/String;
    :catch_e9
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 195
    .local v0, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unable to add bookmark: "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " not found."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    goto/16 :goto_1d

    .line 205
    .end local v0    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v16    # "info":Landroid/content/pm/ActivityInfo;
    .end local v17    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v18    # "packages":[Ljava/lang/String;
    :cond_112
    if-eqz v10, :cond_12f

    .line 206
    invoke-static {v15, v10}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    move-object v11, v0

    .line 207
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string v0, ""

    .line 214
    .local v0, "title":Ljava/lang/String;
    :goto_11b
    new-instance v5, Lcom/android/server/policy/ModifierShortcutManager$ShortcutInfo;

    invoke-direct {v5, v0, v11}, Lcom/android/server/policy/ModifierShortcutManager$ShortcutInfo;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 215
    .local v5, "shortcut":Lcom/android/server/policy/ModifierShortcutManager$ShortcutInfo;
    if-eqz v14, :cond_128

    .line 216
    iget-object v12, v1, Lcom/android/server/policy/ModifierShortcutManager;->mShiftShortcuts:Landroid/util/SparseArray;

    invoke-virtual {v12, v13, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_12d

    .line 218
    :cond_128
    iget-object v12, v1, Lcom/android/server/policy/ModifierShortcutManager;->mIntentShortcuts:Landroid/util/SparseArray;

    invoke-virtual {v12, v13, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 220
    .end local v0    # "title":Ljava/lang/String;
    .end local v5    # "shortcut":Lcom/android/server/policy/ModifierShortcutManager$ShortcutInfo;
    .end local v6    # "shiftName":Ljava/lang/String;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "className":Ljava/lang/String;
    .end local v9    # "shortcutName":Ljava/lang/String;
    .end local v10    # "categoryName":Ljava/lang/String;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v13    # "shortcutChar":I
    .end local v14    # "isShiftShortcut":Z
    :goto_12d
    goto/16 :goto_1d

    .line 209
    .restart local v6    # "shiftName":Ljava/lang/String;
    .restart local v7    # "packageName":Ljava/lang/String;
    .restart local v8    # "className":Ljava/lang/String;
    .restart local v9    # "shortcutName":Ljava/lang/String;
    .restart local v10    # "categoryName":Ljava/lang/String;
    .restart local v13    # "shortcutChar":I
    .restart local v14    # "isShiftShortcut":Z
    :cond_12f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to add bookmark for shortcut "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ": missing package/class or category attributes"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d2 .. :try_end_14b} :catch_14d
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_14b} :catch_14d

    .line 211
    goto/16 :goto_1d

    .line 221
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v6    # "shiftName":Ljava/lang/String;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "className":Ljava/lang/String;
    .end local v9    # "shortcutName":Ljava/lang/String;
    .end local v10    # "categoryName":Ljava/lang/String;
    .end local v13    # "shortcutChar":I
    .end local v14    # "isShiftShortcut":Z
    :catch_14d
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Got exception parsing bookmarks."

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_153
    return-void
.end method


# virtual methods
.method interceptKey(Landroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 338
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 339
    return v1

    .line 342
    :cond_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v0

    .line 343
    .local v0, "metaState":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 344
    .local v2, "keyCode":I
    const/16 v3, 0x54

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2a

    .line 345
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_20

    .line 346
    iput-boolean v4, p0, Lcom/android/server/policy/ModifierShortcutManager;->mSearchKeyShortcutPending:Z

    .line 347
    iput-boolean v1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mConsumeSearchKeyUp:Z

    goto :goto_29

    .line 349
    :cond_20
    iput-boolean v1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mSearchKeyShortcutPending:Z

    .line 350
    iget-boolean v3, p0, Lcom/android/server/policy/ModifierShortcutManager;->mConsumeSearchKeyUp:Z

    if-eqz v3, :cond_29

    .line 351
    iput-boolean v1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mConsumeSearchKeyUp:Z

    .line 352
    return v4

    .line 355
    :cond_29
    :goto_29
    return v1

    .line 358
    :cond_2a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_31

    .line 359
    return v1

    .line 362
    :cond_31
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v3

    .line 363
    .local v3, "kcm":Landroid/view/KeyCharacterMap;
    invoke-direct {p0, v3, v2, v0}, Lcom/android/server/policy/ModifierShortcutManager;->handleIntentShortcut(Landroid/view/KeyCharacterMap;II)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 364
    return v4

    .line 367
    :cond_3c
    invoke-direct {p0, v2, v0}, Lcom/android/server/policy/ModifierShortcutManager;->handleShortcutService(II)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 368
    return v4

    .line 371
    :cond_43
    return v1
.end method

.method registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    .registers 7
    .param p1, "shortcutCode"    # J
    .param p3, "shortcutService"    # Lcom/android/internal/policy/IShortcutService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/IShortcutService;

    .line 229
    .local v0, "service":Lcom/android/internal/policy/IShortcutService;
    if-eqz v0, :cond_1d

    invoke-interface {v0}, Lcom/android/internal/policy/IShortcutService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_1d

    .line 230
    :cond_15
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Key already exists."

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 233
    :cond_1d
    :goto_1d
    iget-object v1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 234
    return-void
.end method
