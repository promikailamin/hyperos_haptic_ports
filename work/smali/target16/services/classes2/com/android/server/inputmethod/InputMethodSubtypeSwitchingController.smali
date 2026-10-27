.class public final Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;
.super Ljava/lang/Object;
.source "InputMethodSubtypeSwitchingController.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "InputMethodSubtypeSwitchingController"


# instance fields
.field public mEnabledItems:Ljava/util/List;

.field public mRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

.field public mUserActionSinceSwitch:Z


# direct methods
.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mEnabledItems:Ljava/util/List;

    .line 92
    new-instance v1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

    .line 94
    invoke-direct {v1, v0}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

    return-void
.end method

.method public static getEnabledInputMethodsAndSubtypes(Landroid/content/Context;Lcom/android/server/inputmethod/InputMethodSettings;)Ljava/util/List;
    .registers 20

    .line 244
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/inputmethod/InputMethodSettings;->getUserId()I

    move-result v0

    .line 245
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getUserId()I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_e

    move-object/from16 v0, p0

    goto :goto_18

    .line 246
    :cond_e
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 248
    :goto_18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 249
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodList()Ljava/util/ArrayList;

    move-result-object v3

    .line 250
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 251
    sget-object v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->TAG:Ljava/lang/String;

    const-string v2, "Enabled input method list is empty."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2f
    move v4, v2

    .line 255
    :goto_30
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_ef

    .line 256
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Landroid/view/inputmethod/InputMethodInfo;

    .line 257
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 258
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->shouldShowInInputMethodPicker()Z

    move-result v12

    const/4 v5, 0x1

    move-object/from16 v15, p1

    .line 259
    invoke-virtual {v15, v10, v5}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v5

    .line 260
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_65

    .line 261
    new-instance v6, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, -0x1

    invoke-direct/range {v6 .. v14}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/inputmethod/InputMethodInfo;IZZZ)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_eb

    .line 265
    :cond_65
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    move v8, v2

    .line 266
    :goto_6b
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_85

    .line 267
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_6b

    .line 269
    :cond_85
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v5

    move v11, v2

    :goto_8a
    if-ge v11, v5, :cond_eb

    .line 271
    invoke-virtual {v10, v11}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v8

    .line 272
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v9

    .line 273
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a1

    move-object/from16 v16, v6

    goto :goto_e6

    .line 277
    :cond_a1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 279
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 280
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v13

    const/4 v14, 0x0

    if-eqz v13, :cond_b7

    move-object v13, v14

    goto :goto_bf

    .line 281
    :cond_b7
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v0, v13, v9}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 283
    :goto_bf
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v16

    if-eqz v16, :cond_c8

    :goto_c5
    move-object v9, v14

    move-object v14, v6

    goto :goto_cd

    .line 284
    :cond_c8
    invoke-virtual {v8, v0, v9}, Landroid/view/inputmethod/InputMethodSubtype;->getLayoutDisplayName(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v14

    goto :goto_c5

    .line 285
    :goto_cd
    new-instance v6, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-object/from16 v16, v8

    move-object v8, v13

    .line 286
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v13

    .line 287
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodSubtype;->isSuitableForPhysicalKeyboardLayoutMapping()Z

    move-result v16

    move/from16 v17, v16

    move-object/from16 v16, v14

    move/from16 v14, v17

    invoke-direct/range {v6 .. v14}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/inputmethod/InputMethodInfo;IZZZ)V

    .line 285
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_e6
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v6, v16

    goto :goto_8a

    :cond_eb
    :goto_eb
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_30

    .line 291
    :cond_ef
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 7

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mRotationList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->-$$Nest$mdump(Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;Landroid/util/Printer;Ljava/lang/String;)V

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mEnabledItems:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 210
    :goto_3f
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mEnabledItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_71

    .line 211
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mEnabledItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  i="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " item="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 214
    :cond_71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "User action since last switch: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mUserActionSinceSwitch:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getItems(ZZ)Ljava/util/List;
    .registers 7

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 140
    :goto_6
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mEnabledItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 141
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mEnabledItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    if-eqz p1, :cond_1d

    .line 142
    iget-boolean v3, v2, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mShowInImeSwitcherMenu:Z

    if-nez v3, :cond_1d

    goto :goto_27

    :cond_1d
    if-nez p2, :cond_24

    .line 145
    iget-boolean v3, v2, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mIsAuxiliary:Z

    if-eqz v3, :cond_24

    goto :goto_27

    .line 148
    :cond_24
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_2a
    return-object v0
.end method

.method public getNext(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;ZZIZ)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .registers 8

    move-object v0, p0

    .line 126
    iget-object p0, v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

    .line 127
    invoke-virtual {v0, p5, p6}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->isRecency(IZ)Z

    move-result p5

    .line 126
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->next(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;ZZZZ)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-result-object p0

    return-object p0
.end method

.method public final isRecency(IZ)Z
    .registers 5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_f

    const/4 v1, 0x2

    if-ne p1, v1, :cond_d

    .line 229
    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mUserActionSinceSwitch:Z

    if-eqz p0, :cond_d

    if-eqz p2, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    return v0
.end method

.method public onInputMethodSubtypeChanged()V
    .registers 2

    const/4 v0, 0x0

    .line 202
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mUserActionSinceSwitch:Z

    return-void
.end method

.method public onUserAction(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Z
    .registers 4

    .line 192
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->setMostRecent(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Z

    move-result p1

    if-eqz p1, :cond_b

    const/4 p2, 0x1

    .line 194
    iput-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mUserActionSinceSwitch:Z

    :cond_b
    return p1
.end method

.method public update(Landroid/content/Context;Lcom/android/server/inputmethod/InputMethodSettings;)V
    .registers 3

    .line 162
    invoke-static {p1, p2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getEnabledInputMethodsAndSubtypes(Landroid/content/Context;Lcom/android/server/inputmethod/InputMethodSettings;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mEnabledItems:Ljava/util/List;

    const/4 p1, 0x0

    .line 163
    invoke-virtual {p0, p1, p1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getItems(ZZ)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->update(Ljava/util/List;)V

    return-void
.end method

.method public update(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;)V"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->-$$Nest$fgetmItems(Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 177
    new-instance v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

    invoke-direct {v0, p1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

    :cond_13
    return-void
.end method
