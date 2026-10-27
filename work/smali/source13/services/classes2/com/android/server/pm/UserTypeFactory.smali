.class public final Lcom/android/server/pm/UserTypeFactory;
.super Ljava/lang/Object;
.source "UserTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "UserTypeFactory"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static customizeBuilders(Landroid/util/ArrayMap;Landroid/content/res/XmlResourceParser;)V
    .registers 12
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/UserTypeDetails$Builder;",
            ">;",
            "Landroid/content/res/XmlResourceParser;",
            ")V"
        }
    .end annotation

    .line 313
    .local p0, "builders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/UserTypeDetails$Builder;>;"
    const-string v0, "UserTypeFactory"

    :try_start_2
    const-string/jumbo v1, "user-types"

    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 314
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 315
    :goto_b
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_237

    .line 318
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, "elementName":Ljava/lang/String;
    const-string/jumbo v3, "profile-type"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_1d} :catch_238
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1d} :catch_238

    const-string v4, " in "

    if-eqz v3, :cond_23

    .line 320
    const/4 v3, 0x1

    .local v3, "isProfile":Z
    goto :goto_2c

    .line 321
    .end local v3    # "isProfile":Z
    :cond_23
    :try_start_23
    const-string v3, "full-type"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_200

    .line 322
    const/4 v3, 0x0

    .line 334
    .restart local v3    # "isProfile":Z
    :goto_2c
    const/4 v5, 0x0

    const-string/jumbo v6, "name"

    invoke-interface {p1, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 335
    .local v5, "typeName":Ljava/lang/String;
    if-eqz v5, :cond_1e2

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    goto/16 :goto_1e2

    .line 341
    :cond_40
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 344
    const-string v6, "android."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/16 v7, 0x1000

    if-eqz v6, :cond_ce

    .line 346
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Customizing user type "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-virtual {p0, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/UserTypeDetails$Builder;

    .line 348
    .local v6, "builder":Lcom/android/server/pm/UserTypeDetails$Builder;
    if-eqz v6, :cond_af

    .line 352
    if-eqz v3, :cond_75

    .line 353
    invoke-virtual {v6}, Lcom/android/server/pm/UserTypeDetails$Builder;->getBaseType()I

    move-result v8

    if-eq v8, v7, :cond_7f

    :cond_75
    if-nez v3, :cond_80

    .line 354
    invoke-virtual {v6}, Lcom/android/server/pm/UserTypeDetails$Builder;->getBaseType()I

    move-result v7

    const/16 v8, 0x400

    if-ne v7, v8, :cond_80

    :cond_7f
    goto :goto_81

    :cond_80
    const/4 v2, 0x0

    .line 355
    .local v2, "isValid":Z
    :goto_81
    if-eqz v2, :cond_84

    .line 360
    .end local v2    # "isValid":Z
    goto :goto_f5

    .line 356
    .restart local v2    # "isValid":Z
    :cond_84
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wrong base type to customize user type ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "), which is type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 358
    invoke-virtual {v6}, Lcom/android/server/pm/UserTypeDetails$Builder;->getBaseType()I

    move-result v8

    invoke-static {v8}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "builders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/UserTypeDetails$Builder;>;"
    .end local p1    # "parser":Landroid/content/res/XmlResourceParser;
    throw v4

    .line 349
    .end local v2    # "isValid":Z
    .restart local p0    # "builders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/UserTypeDetails$Builder;>;"
    .restart local p1    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_af
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal custom user type name "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ": Non-AOSP user types cannot start with \'android.\'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "builders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/UserTypeDetails$Builder;>;"
    .end local p1    # "parser":Landroid/content/res/XmlResourceParser;
    throw v2

    .line 360
    .end local v6    # "builder":Lcom/android/server/pm/UserTypeDetails$Builder;
    .restart local p0    # "builders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/UserTypeDetails$Builder;>;"
    .restart local p1    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_ce
    if-eqz v3, :cond_1c3

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Creating custom user type "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    new-instance v2, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v2}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    move-object v6, v2

    .line 364
    .restart local v6    # "builder":Lcom/android/server/pm/UserTypeDetails$Builder;
    invoke-virtual {v6, v5}, Lcom/android/server/pm/UserTypeDetails$Builder;->setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;

    .line 365
    invoke-virtual {v6, v7}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    .line 366
    invoke-virtual {p0, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    :goto_f5
    if-eqz v3, :cond_12c

    .line 374
    const-string/jumbo v2, "max-allowed-per-parent"

    .line 375
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;

    invoke-direct {v7, v6}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;)V

    .line 374
    invoke-static {p1, v2, v7}, Lcom/android/server/pm/UserTypeFactory;->setIntAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 376
    const-string v2, "icon-badge"

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda1;

    invoke-direct {v7, v6}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;)V

    invoke-static {p1, v2, v7}, Lcom/android/server/pm/UserTypeFactory;->setResAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 377
    const-string v2, "badge-plain"

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda2;

    invoke-direct {v7, v6}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;)V

    invoke-static {p1, v2, v7}, Lcom/android/server/pm/UserTypeFactory;->setResAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 378
    const-string v2, "badge-no-background"

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda3;

    invoke-direct {v7, v6}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;)V

    invoke-static {p1, v2, v7}, Lcom/android/server/pm/UserTypeFactory;->setResAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 381
    :cond_12c
    const-string v2, "enabled"

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda4;

    invoke-direct {v7, v6}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;)V

    invoke-static {p1, v2, v7}, Lcom/android/server/pm/UserTypeFactory;->setIntAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 384
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    .line 385
    .local v2, "depth":I
    :goto_13d
    invoke-static {p1, v2}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v7

    if-eqz v7, :cond_232

    .line 386
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 387
    .local v7, "childName":Ljava/lang/String;
    const-string v8, "default-restrictions"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15d

    .line 388
    nop

    .line 389
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/TypedXmlPullParser;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Landroid/util/TypedXmlPullParser;)Landroid/os/Bundle;

    move-result-object v8

    .line 390
    .local v8, "restrictions":Landroid/os/Bundle;
    invoke-virtual {v6, v8}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultRestrictions(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    .line 391
    nop

    .end local v8    # "restrictions":Landroid/os/Bundle;
    goto :goto_1c1

    :cond_15d
    if-eqz v3, :cond_173

    const-string v8, "badge-labels"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_173

    .line 392
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda5;

    invoke-direct {v8, v6}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;)V

    invoke-static {p1, v8}, Lcom/android/server/pm/UserTypeFactory;->setResAttributeArray(Landroid/content/res/XmlResourceParser;Ljava/util/function/Consumer;)V

    goto :goto_1c1

    .line 393
    :cond_173
    if-eqz v3, :cond_189

    const-string v8, "badge-colors"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_189

    .line 394
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda6;

    invoke-direct {v8, v6}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;)V

    invoke-static {p1, v8}, Lcom/android/server/pm/UserTypeFactory;->setResAttributeArray(Landroid/content/res/XmlResourceParser;Ljava/util/function/Consumer;)V

    goto :goto_1c1

    .line 395
    :cond_189
    if-eqz v3, :cond_19f

    const-string v8, "badge-colors-dark"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19f

    .line 396
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda7;

    invoke-direct {v8, v6}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;)V

    invoke-static {p1, v8}, Lcom/android/server/pm/UserTypeFactory;->setResAttributeArray(Landroid/content/res/XmlResourceParser;Ljava/util/function/Consumer;)V

    goto :goto_1c1

    .line 398
    :cond_19f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unrecognized tag "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 399
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 398
    invoke-static {v0, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    .end local v7    # "childName":Ljava/lang/String;
    :goto_1c1
    goto/16 :goto_13d

    .line 368
    .end local v2    # "depth":I
    .end local v6    # "builder":Lcom/android/server/pm/UserTypeDetails$Builder;
    :cond_1c3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Creation of non-profile user type ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ") is not currently supported."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "builders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/UserTypeDetails$Builder;>;"
    .end local p1    # "parser":Landroid/content/res/XmlResourceParser;
    throw v2

    .line 336
    .restart local p0    # "builders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/UserTypeDetails$Builder;>;"
    .restart local p1    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_1e2
    :goto_1e2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping user type with no name in "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 337
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 336
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 339
    goto :goto_232

    .line 323
    .end local v3    # "isProfile":Z
    .end local v5    # "typeName":Ljava/lang/String;
    :cond_200
    const-string v2, "change-user-type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20c

    .line 325
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 326
    goto :goto_232

    .line 328
    :cond_20c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping unknown element "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 329
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 328
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 331
    nop

    .line 316
    .end local v1    # "elementName":Ljava/lang/String;
    :cond_232
    :goto_232
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_235
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_23 .. :try_end_235} :catch_238
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_235} :catch_238

    goto/16 :goto_b

    .line 405
    :cond_237
    goto :goto_23e

    .line 403
    :catch_238
    move-exception v1

    .line 404
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Cannot read user type configuration file."

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 406
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_23e
    return-void
.end method

.method private static getDefaultBuilders()Landroid/util/ArrayMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/UserTypeDetails$Builder;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 97
    .local v0, "builders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/UserTypeDetails$Builder;>;"
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultTypeProfileManaged()Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    const-string v2, "android.os.usertype.profile.MANAGED"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultTypeFullSystem()Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    const-string v2, "android.os.usertype.full.SYSTEM"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultTypeFullSecondary()Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    const-string v2, "android.os.usertype.full.SECONDARY"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultTypeFullGuest()Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    const-string v2, "android.os.usertype.full.GUEST"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultTypeFullDemo()Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    const-string v2, "android.os.usertype.full.DEMO"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultTypeFullRestricted()Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    const-string v2, "android.os.usertype.full.RESTRICTED"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultTypeSystemHeadless()Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    const-string v2, "android.os.usertype.system.HEADLESS"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultTypeProfileClone()Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    const-string v2, "android.os.usertype.profile.CLONE"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_5a

    .line 106
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultTypeProfileTest()Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    const-string v2, "android.os.usertype.profile.TEST"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_5a
    return-object v0
.end method

.method private static getDefaultGuestUserRestrictions()Landroid/os/Bundle;
    .registers 3

    .line 273
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultSecondaryUserRestrictions()Landroid/os/Bundle;

    move-result-object v0

    .line 274
    .local v0, "restrictions":Landroid/os/Bundle;
    const-string/jumbo v1, "no_config_wifi"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 275
    const-string/jumbo v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 276
    const-string/jumbo v1, "no_config_credentials"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 277
    return-object v0
.end method

.method private static getDefaultManagedCrossProfileIntentFilter()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/DefaultCrossProfileIntentFilter;",
            ">;"
        }
    .end annotation

    .line 298
    invoke-static {}, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->getDefaultManagedProfileFilters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultManagedProfileRestrictions()Landroid/os/Bundle;
    .registers 3

    .line 281
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 282
    .local v0, "restrictions":Landroid/os/Bundle;
    const-string/jumbo v1, "no_wallpaper"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 283
    return-object v0
.end method

.method private static getDefaultManagedProfileSecureSettings()Landroid/os/Bundle;
    .registers 3

    .line 288
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 289
    .local v0, "settings":Landroid/os/Bundle;
    const-string/jumbo v1, "managed_profile_contact_remote_search"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v1, "cross_profile_calendar_enabled"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return-object v0
.end method

.method private static getDefaultSecondaryUserRestrictions()Landroid/os/Bundle;
    .registers 3

    .line 265
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 266
    .local v0, "restrictions":Landroid/os/Bundle;
    const-string/jumbo v1, "no_outgoing_calls"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 267
    const-string/jumbo v1, "no_sms"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 268
    return-object v0
.end method

.method private static getDefaultTypeFullDemo()Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 223
    new-instance v0, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v0}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    .line 224
    const-string v1, "android.os.usertype.full.DEMO"

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 225
    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 226
    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultUserInfoPropertyFlags(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 227
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setMaxAllowed(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 228
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultRestrictions(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 223
    return-object v0
.end method

.method private static getDefaultTypeFullGuest()Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 4

    .line 207
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 208
    const v1, 0x111015c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 209
    .local v0, "ephemeralGuests":Z
    if-eqz v0, :cond_10

    const/16 v1, 0x100

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    or-int/lit8 v1, v1, 0x4

    .line 211
    .local v1, "flags":I
    new-instance v2, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v2}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    .line 212
    const-string v3, "android.os.usertype.full.GUEST"

    invoke-virtual {v2, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v2

    const/16 v3, 0x400

    .line 213
    invoke-virtual {v2, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v2

    .line 214
    invoke-virtual {v2, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultUserInfoPropertyFlags(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 215
    invoke-virtual {v2, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setMaxAllowed(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v2

    .line 216
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultGuestUserRestrictions()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultRestrictions(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v2

    .line 211
    return-object v2
.end method

.method private static getDefaultTypeFullRestricted()Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 236
    new-instance v0, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v0}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    .line 237
    const-string v1, "android.os.usertype.full.RESTRICTED"

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 238
    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 239
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultUserInfoPropertyFlags(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 240
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setMaxAllowed(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 242
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultRestrictions(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 236
    return-object v0
.end method

.method private static getDefaultTypeFullSecondary()Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 196
    new-instance v0, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v0}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    .line 197
    const-string v1, "android.os.usertype.full.SECONDARY"

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 198
    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 199
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setMaxAllowed(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 200
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultSecondaryUserRestrictions()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultRestrictions(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 196
    return-object v0
.end method

.method private static getDefaultTypeFullSystem()Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 249
    new-instance v0, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v0}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    .line 250
    const-string v1, "android.os.usertype.full.SYSTEM"

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 251
    const/16 v1, 0xc00

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 249
    return-object v0
.end method

.method private static getDefaultTypeProfileClone()Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 3

    .line 118
    new-instance v0, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v0}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    .line 119
    const-string v1, "android.os.usertype.profile.CLONE"

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 120
    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 121
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setMaxAllowedPerParent(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 122
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setLabel(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 123
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultRestrictions(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 124
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setIsMediaSharedWithParent(Z)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 125
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setIsCredentialSharableWithParent(Z)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 118
    return-object v0
.end method

.method private static getDefaultTypeProfileManaged()Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 4

    .line 133
    new-instance v0, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v0}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    .line 134
    const-string v1, "android.os.usertype.profile.MANAGED"

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 135
    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 136
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultUserInfoPropertyFlags(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 137
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setMaxAllowedPerParent(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 138
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setLabel(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 139
    const v2, 0x108038e

    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setIconBadge(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 140
    const v2, 0x1080389

    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgePlain(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 141
    const v2, 0x108038b

    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgeNoBackground(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/4 v2, 0x3

    new-array v3, v2, [I

    fill-array-data v3, :array_70

    .line 142
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgeLabels([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    new-array v3, v2, [I

    fill-array-data v3, :array_7a

    .line 146
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgeColors([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    new-array v2, v2, [I

    fill-array-data v2, :array_84

    .line 150
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDarkThemeBadgeColors([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 154
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultManagedProfileRestrictions()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultRestrictions(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 155
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultManagedProfileSecureSettings()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultSecureSettings(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 156
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultManagedCrossProfileIntentFilter()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultCrossProfileIntentFilters(Ljava/util/List;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 157
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setIsCredentialSharableWithParent(Z)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 133
    return-object v0

    nop

    :array_70
    .array-data 4
        0x1040558
        0x1040559
        0x104055a
    .end array-data

    :array_7a
    .array-data 4
        0x1060257
        0x1060259
        0x106025b
    .end array-data

    :array_84
    .array-data 4
        0x1060258
        0x106025a
        0x106025c
    .end array-data
.end method

.method private static getDefaultTypeProfileTest()Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 4

    .line 165
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 166
    .local v0, "restrictions":Landroid/os/Bundle;
    const-string/jumbo v1, "no_fun"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 168
    new-instance v1, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v1}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    .line 169
    const-string v2, "android.os.usertype.profile.TEST"

    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    .line 170
    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    .line 171
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setMaxAllowedPerParent(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    .line 172
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setLabel(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    .line 173
    const v2, 0x108038e

    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setIconBadge(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    .line 174
    const v2, 0x1080389

    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgePlain(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    .line 175
    const v2, 0x108038b

    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgeNoBackground(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    const/4 v2, 0x3

    new-array v3, v2, [I

    fill-array-data v3, :array_5e

    .line 176
    invoke-virtual {v1, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgeLabels([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    new-array v3, v2, [I

    fill-array-data v3, :array_68

    .line 180
    invoke-virtual {v1, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgeColors([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    new-array v2, v2, [I

    fill-array-data v2, :array_72

    .line 184
    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDarkThemeBadgeColors([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    .line 188
    invoke-virtual {v1, v0}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultRestrictions(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    .line 168
    return-object v1

    nop

    :array_5e
    .array-data 4
        0x1040558
        0x1040559
        0x104055a
    .end array-data

    :array_68
    .array-data 4
        0x1060257
        0x1060259
        0x106025b
    .end array-data

    :array_72
    .array-data 4
        0x1060258
        0x106025a
        0x106025c
    .end array-data
.end method

.method private static getDefaultTypeSystemHeadless()Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 259
    new-instance v0, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v0}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    .line 260
    const-string v1, "android.os.usertype.system.HEADLESS"

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 261
    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 259
    return-object v0
.end method

.method public static getUserTypeUpgrades()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;",
            ">;"
        }
    .end annotation

    .line 527
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1170006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 528
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_b
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultBuilders()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/server/pm/UserTypeFactory;->parseUserUpgrades(Landroid/util/ArrayMap;Landroid/content/res/XmlResourceParser;)Ljava/util/List;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_19

    .line 529
    .local v1, "userUpgrades":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;>;"
    if-eqz v0, :cond_18

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 530
    .end local v0    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_18
    return-object v1

    .line 526
    .end local v1    # "userUpgrades":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;>;"
    .restart local v0    # "parser":Landroid/content/res/XmlResourceParser;
    :catchall_19
    move-exception v1

    if-eqz v0, :cond_24

    :try_start_1c
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_24
    :goto_24
    throw v1
.end method

.method public static getUserTypeVersion()I
    .registers 3

    .line 492
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1170006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 493
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_b
    invoke-static {v0}, Lcom/android/server/pm/UserTypeFactory;->getUserTypeVersion(Landroid/content/res/XmlResourceParser;)I

    move-result v1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_15

    .line 494
    if-eqz v0, :cond_14

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 493
    :cond_14
    return v1

    .line 491
    :catchall_15
    move-exception v1

    if-eqz v0, :cond_20

    :try_start_18
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_20

    :catchall_1c
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_20
    :goto_20
    throw v1
.end method

.method static getUserTypeVersion(Landroid/content/res/XmlResourceParser;)I
    .registers 7
    .param p0, "parser"    # Landroid/content/res/XmlResourceParser;

    .line 499
    const-string v0, "UserTypeFactory"

    const/4 v1, 0x0

    .line 502
    .local v1, "version":I
    :try_start_3
    const-string/jumbo v2, "user-types"

    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 503
    const/4 v2, 0x0

    const-string/jumbo v3, "version"

    invoke-interface {p0, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_11} :catch_41
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_11} :catch_41

    .line 504
    .local v2, "versionValue":Ljava/lang/String;
    if-eqz v2, :cond_40

    .line 506
    :try_start_13
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_17} :catch_19
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_17} :catch_41
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_17} :catch_41

    move v1, v0

    .line 511
    goto :goto_40

    .line 507
    :catch_19
    move-exception v3

    .line 508
    .local v3, "e":Ljava/lang/NumberFormatException;
    :try_start_1a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot parse value of \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' for version in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 509
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 508
    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 510
    nop

    .end local v1    # "version":I
    .end local p0    # "parser":Landroid/content/res/XmlResourceParser;
    throw v3
    :try_end_40
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_40} :catch_41
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_40} :catch_41

    .line 515
    .end local v2    # "versionValue":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "version":I
    .restart local p0    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_40
    :goto_40
    goto :goto_47

    .line 513
    :catch_41
    move-exception v2

    .line 514
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Cannot read user type configuration file."

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 517
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_47
    return v1
.end method

.method public static getUserTypes()Landroid/util/ArrayMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/UserTypeDetails;",
            ">;"
        }
    .end annotation

    .line 80
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultBuilders()Landroid/util/ArrayMap;

    move-result-object v0

    .line 83
    .local v0, "builders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/UserTypeDetails$Builder;>;"
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1170006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 84
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_f
    invoke-static {v0, v1}, Lcom/android/server/pm/UserTypeFactory;->customizeBuilders(Landroid/util/ArrayMap;Landroid/content/res/XmlResourceParser;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_3e

    .line 85
    if-eqz v1, :cond_17

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 87
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_17
    new-instance v1, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 88
    .local v1, "types":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/UserTypeDetails;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_3d

    .line 89
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-virtual {v4}, Lcom/android/server/pm/UserTypeDetails$Builder;->createUserTypeDetails()Lcom/android/server/pm/UserTypeDetails;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 91
    .end local v2    # "i":I
    :cond_3d
    return-object v1

    .line 82
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :catchall_3e
    move-exception v2

    if-eqz v1, :cond_49

    :try_start_41
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_45

    goto :goto_49

    :catchall_45
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_49
    :goto_49
    throw v2
.end method

.method static parseUserUpgrades(Landroid/util/ArrayMap;Landroid/content/res/XmlResourceParser;)Ljava/util/List;
    .registers 10
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/UserTypeDetails$Builder;",
            ">;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;",
            ">;"
        }
    .end annotation

    .line 536
    .local p0, "builders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/UserTypeDetails$Builder;>;"
    const-string v0, "UserTypeFactory"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 539
    .local v1, "userUpgrades":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;>;"
    :try_start_7
    const-string/jumbo v2, "user-types"

    invoke-static {p1, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 540
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 541
    :goto_10
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_71

    .line 543
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 544
    .local v2, "elementName":Ljava/lang/String;
    const-string v3, "change-user-type"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 545
    const-string v3, "from"

    const/4 v4, 0x0

    invoke-interface {p1, v4, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 546
    .local v3, "fromType":Ljava/lang/String;
    const-string/jumbo v5, "to"

    invoke-interface {p1, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 549
    .local v5, "toType":Ljava/lang/String;
    invoke-static {v3, p0}, Lcom/android/server/pm/UserTypeFactory;->validateUserTypeIsProfile(Ljava/lang/String;Landroid/util/ArrayMap;)V

    .line 550
    invoke-static {v5, p0}, Lcom/android/server/pm/UserTypeFactory;->validateUserTypeIsProfile(Ljava/lang/String;Landroid/util/ArrayMap;)V
    :try_end_37
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_37} :catch_72
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_37} :catch_72

    .line 554
    :try_start_37
    const-string/jumbo v6, "whenVersionLeq"

    .line 555
    invoke-interface {p1, v4, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 554
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_42
    .catch Ljava/lang/NumberFormatException; {:try_start_37 .. :try_end_42} :catch_4c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_37 .. :try_end_42} :catch_72
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_42} :catch_72

    .line 560
    .local v4, "maxVersionToConvert":I
    nop

    .line 562
    :try_start_43
    new-instance v6, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;

    invoke-direct {v6, v3, v5, v4}, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 564
    .local v6, "userTypeUpgrade":Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    goto :goto_6d

    .line 556
    .end local v4    # "maxVersionToConvert":I
    .end local v6    # "userTypeUpgrade":Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;
    :catch_4c
    move-exception v4

    .line 557
    .local v4, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot parse value of whenVersionLeq in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 558
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 557
    invoke-static {v0, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 559
    nop

    .end local v1    # "userUpgrades":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;>;"
    .end local p0    # "builders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/UserTypeDetails$Builder;>;"
    .end local p1    # "parser":Landroid/content/res/XmlResourceParser;
    throw v4

    .line 567
    .end local v3    # "fromType":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "toType":Ljava/lang/String;
    .restart local v1    # "userUpgrades":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;>;"
    .restart local p0    # "builders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/UserTypeDetails$Builder;>;"
    .restart local p1    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_69
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 568
    nop

    .line 542
    .end local v2    # "elementName":Ljava/lang/String;
    :goto_6d
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_70
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_43 .. :try_end_70} :catch_72
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_70} :catch_72

    goto :goto_10

    .line 573
    :cond_71
    goto :goto_78

    .line 571
    :catch_72
    move-exception v2

    .line 572
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Cannot read user type configuration file."

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 575
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_78
    return-object v1
.end method

.method private static setIntAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V
    .registers 7
    .param p0, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p1, "attributeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 419
    .local p2, "fcn":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "intValue":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 421
    return-void

    .line 424
    :cond_8
    :try_start_8
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_13} :catch_15

    .line 429
    nop

    .line 430
    return-void

    .line 425
    :catch_15
    move-exception v1

    .line 426
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot parse value of \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 427
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 426
    const-string v3, "UserTypeFactory"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 428
    throw v1
.end method

.method private static setResAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V
    .registers 5
    .param p0, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p1, "attributeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 442
    .local p2, "fcn":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    .line 444
    return-void

    .line 446
    :cond_8
    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 447
    .local v0, "resId":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 448
    return-void
.end method

.method private static setResAttributeArray(Landroid/content/res/XmlResourceParser;Ljava/util/function/Consumer;)V
    .registers 8
    .param p0, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/util/function/Consumer<",
            "[I>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 462
    .local p1, "fcn":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<[I>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 463
    .local v0, "resList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 464
    .local v1, "depth":I
    :goto_9
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 465
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 466
    .local v2, "elementName":Ljava/lang/String;
    const-string v3, "item"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    .line 467
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping unknown child element "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 468
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 467
    const-string v4, "UserTypeFactory"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 470
    goto :goto_9

    .line 472
    :cond_45
    const/4 v3, 0x0

    const-string/jumbo v4, "res"

    const/4 v5, -0x1

    invoke-interface {p0, v3, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 473
    .local v3, "resId":I
    if-ne v3, v5, :cond_51

    .line 474
    goto :goto_9

    .line 476
    :cond_51
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    .end local v2    # "elementName":Ljava/lang/String;
    .end local v3    # "resId":I
    goto :goto_9

    .line 479
    :cond_59
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 480
    .local v2, "result":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_60
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_75

    .line 481
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v2, v3

    .line 480
    add-int/lit8 v3, v3, 0x1

    goto :goto_60

    .line 483
    .end local v3    # "i":I
    :cond_75
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 484
    return-void
.end method

.method private static validateUserTypeIsProfile(Ljava/lang/String;Landroid/util/ArrayMap;)V
    .registers 6
    .param p0, "userType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/UserTypeDetails$Builder;",
            ">;)V"
        }
    .end annotation

    .line 580
    .local p1, "builders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/UserTypeDetails$Builder;>;"
    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserTypeDetails$Builder;

    .line 581
    .local v0, "builder":Lcom/android/server/pm/UserTypeDetails$Builder;
    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails$Builder;->getBaseType()I

    move-result v1

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_11

    goto :goto_30

    .line 582
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal upgrade of user type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : Can only upgrade profiles user types"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 585
    :cond_30
    :goto_30
    return-void
.end method
