.class public Landroid/app/LocaleConfig;
.super Ljava/lang/Object;
.source "LocaleConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/LocaleConfig$Status;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/LocaleConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist STATUS_NOT_SPECIFIED:I = 0x1

.field public static final whitelist STATUS_PARSING_FAILED:I = 0x2

.field public static final whitelist STATUS_SUCCESS:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "LocaleConfig"

.field public static final whitelist TAG_LOCALE:Ljava/lang/String; = "locale"

.field public static final whitelist TAG_LOCALE_CONFIG:Ljava/lang/String; = "locale-config"


# instance fields
.field private blacklist mDefaultLocale:Ljava/util/Locale;

.field private blacklist mLocales:Landroid/os/LocaleList;

.field private blacklist mStatus:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 313
    new-instance v0, Landroid/app/LocaleConfig$1;

    invoke-direct {v0}, Landroid/app/LocaleConfig$1;-><init>()V

    sput-object v0, Landroid/app/LocaleConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3

    .line 114
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/app/LocaleConfig;-><init>(Landroid/content/Context;Z)V

    .line 115
    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Z)V
    .registers 5

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/LocaleConfig;->mStatus:I

    .line 133
    if-eqz p2, :cond_34

    .line 134
    const-class p2, Landroid/app/LocaleManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/LocaleManager;

    .line 135
    const-string v1, "LocaleConfig"

    if-nez p2, :cond_1c

    .line 136
    const-string p1, "LocaleManager is null, cannot get the override LocaleConfig"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iput v0, p0, Landroid/app/LocaleConfig;->mStatus:I

    .line 138
    return-void

    .line 140
    :cond_1c
    invoke-virtual {p2}, Landroid/app/LocaleManager;->getOverrideLocaleConfig()Landroid/app/LocaleConfig;

    move-result-object p2

    .line 141
    if-eqz p2, :cond_34

    .line 142
    const-string p1, "Has the override LocaleConfig"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p2}, Landroid/app/LocaleConfig;->getStatus()I

    move-result p1

    iput p1, p0, Landroid/app/LocaleConfig;->mStatus:I

    .line 144
    invoke-virtual {p2}, Landroid/app/LocaleConfig;->getSupportedLocales()Landroid/os/LocaleList;

    move-result-object p1

    iput-object p1, p0, Landroid/app/LocaleConfig;->mLocales:Landroid/os/LocaleList;

    .line 145
    return-void

    .line 148
    :cond_34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->getLocaleConfigRes()I

    move-result p1

    invoke-direct {p0, p1, p2}, Landroid/app/LocaleConfig;->parseLocaleConfig(ILandroid/content/res/Resources;)V

    .line 150
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/ApplicationInfo;Landroid/content/res/Resources;)V
    .registers 4

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/LocaleConfig;->mStatus:I

    .line 164
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->getLocaleConfigRes()I

    move-result p1

    invoke-direct {p0, p1, p2}, Landroid/app/LocaleConfig;->parseLocaleConfig(ILandroid/content/res/Resources;)V

    .line 165
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/LocaleList;)V
    .registers 3

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/LocaleConfig;->mStatus:I

    .line 184
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/LocaleConfig;->mStatus:I

    .line 185
    iput-object p1, p0, Landroid/app/LocaleConfig;->mLocales:Landroid/os/LocaleList;

    .line 186
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/LocaleConfig;->mStatus:I

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/LocaleConfig;->mStatus:I

    .line 197
    sget-object v0, Landroid/os/LocaleList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/LocaleList;

    iput-object p1, p0, Landroid/app/LocaleConfig;->mLocales:Landroid/os/LocaleList;

    .line 198
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/LocaleConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/LocaleConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static whitelist fromContextIgnoringOverride(Landroid/content/Context;)Landroid/app/LocaleConfig;
    .registers 3

    .line 128
    new-instance v0, Landroid/app/LocaleConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/LocaleConfig;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method private blacklist parseLocaleConfig(ILandroid/content/res/Resources;)V
    .registers 14

    .line 204
    const-string v0, "LocaleConfig"

    const/4 v1, 0x1

    if-nez p1, :cond_8

    .line 205
    iput v1, p0, Landroid/app/LocaleConfig;->mStatus:I

    .line 206
    return-void

    .line 208
    :cond_8
    const/4 v2, 0x2

    :try_start_9
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3
    :try_end_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_d} :catch_e0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_d} :catch_c2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_d} :catch_c2

    .line 209
    :try_start_d
    const-string/jumbo v4, "locale-config"

    invoke-static {v3, v4}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 210
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    .line 211
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    .line 213
    nop

    .line 214
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/Flags;->defaultLocale()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_3f

    .line 216
    sget-object v6, Lcom/android/internal/R$styleable;->LocaleConfig:[I

    invoke-virtual {p2, v5, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6
    :try_end_29
    .catchall {:try_start_d .. :try_end_29} :catchall_b6

    .line 218
    :try_start_29
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_33

    .line 220
    if-eqz v6, :cond_40

    :try_start_2f
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->close()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_b6

    goto :goto_40

    .line 216
    :catchall_33
    move-exception v4

    if-eqz v6, :cond_3e

    :try_start_36
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->close()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_3e

    :catchall_3a
    move-exception v5

    :try_start_3b
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3e
    :goto_3e
    throw v4

    .line 214
    :cond_3f
    const/4 v8, 0x0

    .line 223
    :cond_40
    :goto_40
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 224
    :goto_45
    invoke-static {v3, v4}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v9

    if-eqz v9, :cond_7b

    .line 225
    const-string/jumbo v9, "locale"

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_77

    .line 226
    sget-object v9, Lcom/android/internal/R$styleable;->LocaleConfig_Locale:[I

    invoke-virtual {p2, v5, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9
    :try_end_5e
    .catchall {:try_start_3b .. :try_end_5e} :catchall_b6

    .line 228
    :try_start_5e
    invoke-virtual {v9, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 230
    invoke-interface {v6, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_65
    .catchall {:try_start_5e .. :try_end_65} :catchall_6b

    .line 231
    if-eqz v9, :cond_6a

    :try_start_67
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->close()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_b6

    .line 226
    :cond_6a
    goto :goto_45

    :catchall_6b
    move-exception v4

    if-eqz v9, :cond_76

    :try_start_6e
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->close()V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_72

    goto :goto_76

    :catchall_72
    move-exception v5

    :try_start_73
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_76
    :goto_76
    throw v4

    .line 233
    :cond_77
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_45

    .line 236
    :cond_7b
    iput v7, p0, Landroid/app/LocaleConfig;->mStatus:I

    .line 237
    const-string v4, ","

    invoke-static {v4, v6}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v4

    iput-object v4, p0, Landroid/app/LocaleConfig;->mLocales:Landroid/os/LocaleList;

    .line 238
    if-eqz v8, :cond_b0

    .line 239
    invoke-interface {v6, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_98

    .line 240
    invoke-static {v8}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    iput-object v4, p0, Landroid/app/LocaleConfig;->mDefaultLocale:Ljava/util/Locale;

    goto :goto_b0

    .line 242
    :cond_98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Default locale specified that is not contained in the list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iput v2, p0, Landroid/app/LocaleConfig;->mStatus:I
    :try_end_b0
    .catchall {:try_start_73 .. :try_end_b0} :catchall_b6

    .line 247
    :cond_b0
    :goto_b0
    if-eqz v3, :cond_e8

    :try_start_b2
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_b5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b2 .. :try_end_b5} :catch_e0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b2 .. :try_end_b5} :catch_c2
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_b5} :catch_c2

    goto :goto_e8

    .line 208
    :catchall_b6
    move-exception v4

    if-eqz v3, :cond_c1

    :try_start_b9
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_bc
    .catchall {:try_start_b9 .. :try_end_bc} :catchall_bd

    goto :goto_c1

    :catchall_bd
    move-exception v3

    :try_start_be
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c1
    :goto_c1
    throw v4
    :try_end_c2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_be .. :try_end_c2} :catch_e0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_be .. :try_end_c2} :catch_c2
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c2} :catch_c2

    .line 250
    :catch_c2
    move-exception v1

    .line 251
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse XML configuration from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 252
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 251
    invoke-static {v0, p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    iput v2, p0, Landroid/app/LocaleConfig;->mStatus:I

    goto :goto_e9

    .line 247
    :catch_e0
    move-exception p1

    .line 248
    const-string p1, "The resource file pointed to by the given resource ID isn\'t found."

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iput v1, p0, Landroid/app/LocaleConfig;->mStatus:I

    .line 254
    :cond_e8
    :goto_e8
    nop

    .line 255
    :goto_e9
    return-void
.end method


# virtual methods
.method public blacklist containsLocale(Ljava/util/Locale;)Z
    .registers 5

    .line 374
    iget-object v0, p0, Landroid/app/LocaleConfig;->mLocales:Landroid/os/LocaleList;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 375
    return v1

    .line 378
    :cond_6
    move v0, v1

    :goto_7
    iget-object v2, p0, Landroid/app/LocaleConfig;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->size()I

    move-result v2

    if-ge v0, v2, :cond_20

    .line 379
    iget-object v2, p0, Landroid/app/LocaleConfig;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v2, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/os/LocaleList;->matchesLanguageAndScript(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 380
    const/4 p1, 0x1

    return p1

    .line 378
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 384
    :cond_20
    return v1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDefaultLocale()Ljava/util/Locale;
    .registers 2

    .line 278
    iget-object v0, p0, Landroid/app/LocaleConfig;->mDefaultLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public whitelist getStatus()I
    .registers 2

    .line 299
    iget v0, p0, Landroid/app/LocaleConfig;->mStatus:I

    return v0
.end method

.method public whitelist getSupportedLocales()Landroid/os/LocaleList;
    .registers 2

    .line 266
    iget-object v0, p0, Landroid/app/LocaleConfig;->mLocales:Landroid/os/LocaleList;

    return-object v0
.end method

.method public blacklist isSameLocaleConfig(Landroid/app/LocaleConfig;)Z
    .registers 6

    .line 339
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 340
    return v0

    .line 343
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_45

    .line 344
    iget v2, p0, Landroid/app/LocaleConfig;->mStatus:I

    iget v3, p1, Landroid/app/LocaleConfig;->mStatus:I

    if-eq v2, v3, :cond_e

    .line 345
    return v1

    .line 347
    :cond_e
    iget-object p1, p1, Landroid/app/LocaleConfig;->mLocales:Landroid/os/LocaleList;

    .line 348
    iget-object v2, p0, Landroid/app/LocaleConfig;->mLocales:Landroid/os/LocaleList;

    if-nez v2, :cond_17

    if-nez p1, :cond_17

    .line 349
    return v0

    .line 350
    :cond_17
    iget-object v0, p0, Landroid/app/LocaleConfig;->mLocales:Landroid/os/LocaleList;

    if-eqz v0, :cond_45

    if-eqz p1, :cond_45

    .line 351
    iget-object v0, p0, Landroid/app/LocaleConfig;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 352
    nop

    .line 353
    invoke-virtual {p1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 352
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 354
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 355
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 356
    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 360
    :cond_45
    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 309
    iget v0, p0, Landroid/app/LocaleConfig;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    iget-object v0, p0, Landroid/app/LocaleConfig;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 311
    return-void
.end method
