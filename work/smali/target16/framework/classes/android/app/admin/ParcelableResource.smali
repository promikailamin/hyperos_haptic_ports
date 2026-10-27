.class public final Landroid/app/admin/ParcelableResource;
.super Ljava/lang/Object;
.source "ParcelableResource.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/ParcelableResource$ResourceType;
    }
.end annotation


# static fields
.field private static final blacklist ATTR_PACKAGE_NAME:Ljava/lang/String; = "package-name"

.field private static final blacklist ATTR_RESOURCE_ID:Ljava/lang/String; = "resource-id"

.field private static final blacklist ATTR_RESOURCE_NAME:Ljava/lang/String; = "resource-name"

.field private static final blacklist ATTR_RESOURCE_TYPE:Ljava/lang/String; = "resource-type"

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/ParcelableResource;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist RESOURCE_TYPE_DRAWABLE:I = 0x1

.field public static final blacklist RESOURCE_TYPE_STRING:I = 0x2

.field private static blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mResourceId:I

.field private final blacklist mResourceName:Ljava/lang/String;

.field private final blacklist mResourceType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 54
    const-string v0, "DevicePolicyManager"

    sput-object v0, Landroid/app/admin/ParcelableResource;->TAG:Ljava/lang/String;

    .line 345
    new-instance v0, Landroid/app/admin/ParcelableResource$1;

    invoke-direct {v0}, Landroid/app/admin/ParcelableResource$1;-><init>()V

    sput-object v0, Landroid/app/admin/ParcelableResource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput p1, p0, Landroid/app/admin/ParcelableResource;->mResourceId:I

    .line 107
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/app/admin/ParcelableResource;->mPackageName:Ljava/lang/String;

    .line 108
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/app/admin/ParcelableResource;->mResourceName:Ljava/lang/String;

    .line 109
    iput p4, p0, Landroid/app/admin/ParcelableResource;->mResourceType:I

    .line 110
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;ILandroid/app/admin/ParcelableResource-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/admin/ParcelableResource;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const-string v0, "context must be provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    invoke-static {p1, p2, p3}, Landroid/app/admin/ParcelableResource;->verifyResourceExistsInCallingPackage(Landroid/content/Context;II)V

    .line 93
    iput p2, p0, Landroid/app/admin/ParcelableResource;->mResourceId:I

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/ParcelableResource;->mPackageName:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/app/admin/ParcelableResource;->mResourceName:Ljava/lang/String;

    .line 96
    iput p3, p0, Landroid/app/admin/ParcelableResource;->mResourceType:I

    .line 97
    return-void
.end method

.method public static blacklist createFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/ParcelableResource;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    const-string/jumbo v0, "resource-id"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 305
    const-string/jumbo v2, "package-name"

    invoke-interface {p0, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 307
    const-string/jumbo v3, "resource-name"

    invoke-interface {p0, v1, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 309
    const-string/jumbo v4, "resource-type"

    invoke-interface {p0, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 312
    new-instance v1, Landroid/app/admin/ParcelableResource;

    invoke-direct {v1, v0, v2, v3, p0}, Landroid/app/admin/ParcelableResource;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    return-object v1
.end method

.method private blacklist getAppResourcesWithCallersConfiguration(Landroid/content/Context;)Landroid/content/res/Resources;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 252
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 253
    iget-object v1, p0, Landroid/app/admin/ParcelableResource;->mPackageName:Ljava/lang/String;

    const/16 v2, 0x2400

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 257
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;Landroid/content/res/Configuration;)Landroid/content/res/Resources;

    move-result-object p1

    return-object p1
.end method

.method private static blacklist hasDrawableInCallingPackage(Landroid/content/Context;I)Z
    .registers 3

    .line 140
    :try_start_0
    const-string v0, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_e} :catch_f

    return p0

    .line 141
    :catch_f
    move-exception p0

    .line 142
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist hasStringInCallingPackage(Landroid/content/Context;I)Z
    .registers 3

    .line 148
    :try_start_0
    const-string/jumbo v0, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_f} :catch_10

    return p0

    .line 149
    :catch_10
    move-exception p0

    .line 150
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist loadDefaultDrawable(Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .line 274
    const-string v0, "defaultDrawableLoader can\'t be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 275
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static blacklist loadDefaultString(Ljava/util/function/Supplier;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 283
    const-string v0, "defaultStringLoader can\'t be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 284
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static blacklist verifyResourceExistsInCallingPackage(Landroid/content/Context;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 115
    packed-switch p2, :pswitch_data_5a

    .line 133
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown ResourceType: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 125
    :pswitch_1c
    invoke-static {p0, p1}, Landroid/app/admin/ParcelableResource;->hasStringInCallingPackage(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_23

    goto :goto_41

    .line 126
    :cond_23
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 128
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 126
    const-string p1, "String with id %d doesn\'t exist in the calling package %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 117
    :pswitch_3b
    invoke-static {p0, p1}, Landroid/app/admin/ParcelableResource;->hasDrawableInCallingPackage(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_42

    .line 136
    :goto_41
    return-void

    .line 118
    :cond_42
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 120
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 118
    const-string p1, "Drawable with id %d doesn\'t exist in the calling package %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_1c
    .end packed-switch
.end method

.method private blacklist verifyResourceName(Landroid/content/res/Resources;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 261
    iget v0, p0, Landroid/app/admin/ParcelableResource;->mResourceId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 262
    iget-object v0, p0, Landroid/app/admin/ParcelableResource;->mResourceName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 267
    return-void

    .line 263
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Landroid/app/admin/ParcelableResource;->mResourceId:I

    .line 265
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/app/admin/ParcelableResource;->mResourceName:Ljava/lang/String;

    filled-new-array {p1, v1, v2}, [Ljava/lang/Object;

    move-result-object p1

    .line 263
    const-string v1, "Current resource name %s for resource id %d has changed from the previously stored resource name %s."

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 334
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 318
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 319
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_37

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_37

    .line 320
    :cond_12
    check-cast p1, Landroid/app/admin/ParcelableResource;

    .line 321
    iget v2, p0, Landroid/app/admin/ParcelableResource;->mResourceId:I

    iget v3, p1, Landroid/app/admin/ParcelableResource;->mResourceId:I

    if-ne v2, v3, :cond_35

    iget-object v2, p0, Landroid/app/admin/ParcelableResource;->mPackageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/admin/ParcelableResource;->mPackageName:Ljava/lang/String;

    .line 322
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, Landroid/app/admin/ParcelableResource;->mResourceName:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/admin/ParcelableResource;->mResourceName:Ljava/lang/String;

    .line 323
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget v2, p0, Landroid/app/admin/ParcelableResource;->mResourceType:I

    iget p1, p1, Landroid/app/admin/ParcelableResource;->mResourceType:I

    if-ne v2, p1, :cond_35

    goto :goto_36

    :cond_35
    move v0, v1

    .line 321
    :goto_36
    return v0

    .line 319
    :cond_37
    :goto_37
    return v1
.end method

.method public blacklist getDrawable(Landroid/content/Context;ILjava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/function/Supplier<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .line 188
    :try_start_0
    invoke-direct {p0, p1}, Landroid/app/admin/ParcelableResource;->getAppResourcesWithCallersConfiguration(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    .line 189
    invoke-direct {p0, v0}, Landroid/app/admin/ParcelableResource;->verifyResourceName(Landroid/content/res/Resources;)V

    .line 190
    iget v1, p0, Landroid/app/admin/ParcelableResource;->mResourceId:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {v0, v1, p2, p1}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_11} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_11} :catch_12

    return-object p1

    .line 191
    :catch_12
    move-exception p1

    .line 192
    sget-object p2, Landroid/app/admin/ParcelableResource;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to load drawable resource "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/ParcelableResource;->mResourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    invoke-static {p3}, Landroid/app/admin/ParcelableResource;->loadDefaultDrawable(Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 160
    iget-object v0, p0, Landroid/app/admin/ParcelableResource;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getResourceId()I
    .registers 2

    .line 155
    iget v0, p0, Landroid/app/admin/ParcelableResource;->mResourceId:I

    return v0
.end method

.method public blacklist getResourceName()Ljava/lang/String;
    .registers 2

    .line 165
    iget-object v0, p0, Landroid/app/admin/ParcelableResource;->mResourceName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getResourceType()I
    .registers 2

    .line 169
    iget v0, p0, Landroid/app/admin/ParcelableResource;->mResourceType:I

    return v0
.end method

.method public blacklist getString(Landroid/content/Context;Ljava/util/function/Supplier;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 212
    :try_start_0
    invoke-direct {p0, p1}, Landroid/app/admin/ParcelableResource;->getAppResourcesWithCallersConfiguration(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object p1

    .line 213
    invoke-direct {p0, p1}, Landroid/app/admin/ParcelableResource;->verifyResourceName(Landroid/content/res/Resources;)V

    .line 214
    iget v0, p0, Landroid/app/admin/ParcelableResource;->mResourceId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_d} :catch_e

    return-object p1

    .line 215
    :catch_e
    move-exception p1

    .line 216
    sget-object v0, Landroid/app/admin/ParcelableResource;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load string resource "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/admin/ParcelableResource;->mResourceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    invoke-static {p2}, Landroid/app/admin/ParcelableResource;->loadDefaultString(Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs blacklist getString(Landroid/content/Context;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 237
    :try_start_0
    invoke-direct {p0, p1}, Landroid/app/admin/ParcelableResource;->getAppResourcesWithCallersConfiguration(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    .line 238
    invoke-direct {p0, v0}, Landroid/app/admin/ParcelableResource;->verifyResourceName(Landroid/content/res/Resources;)V

    .line 239
    iget v1, p0, Landroid/app/admin/ParcelableResource;->mResourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 240
    nop

    .line 241
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    .line 240
    invoke-static {p1, v0, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_23} :catch_24
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_23} :catch_24

    return-object p1

    .line 244
    :catch_24
    move-exception p1

    .line 245
    sget-object p3, Landroid/app/admin/ParcelableResource;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to load string resource "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/ParcelableResource;->mResourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    invoke-static {p2}, Landroid/app/admin/ParcelableResource;->loadDefaultString(Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 329
    iget v0, p0, Landroid/app/admin/ParcelableResource;->mResourceId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/ParcelableResource;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/admin/ParcelableResource;->mResourceName:Ljava/lang/String;

    iget v3, p0, Landroid/app/admin/ParcelableResource;->mResourceType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 339
    iget p2, p0, Landroid/app/admin/ParcelableResource;->mResourceId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    iget-object p2, p0, Landroid/app/admin/ParcelableResource;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 341
    iget-object p2, p0, Landroid/app/admin/ParcelableResource;->mResourceName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 342
    iget p2, p0, Landroid/app/admin/ParcelableResource;->mResourceType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    return-void
.end method

.method public blacklist writeToXmlFile(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    const-string/jumbo v0, "resource-id"

    iget v1, p0, Landroid/app/admin/ParcelableResource;->mResourceId:I

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 293
    const-string/jumbo v0, "package-name"

    iget-object v1, p0, Landroid/app/admin/ParcelableResource;->mPackageName:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 294
    const-string/jumbo v0, "resource-name"

    iget-object v1, p0, Landroid/app/admin/ParcelableResource;->mResourceName:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 295
    const-string/jumbo v0, "resource-type"

    iget v1, p0, Landroid/app/admin/ParcelableResource;->mResourceType:I

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 296
    return-void
.end method
