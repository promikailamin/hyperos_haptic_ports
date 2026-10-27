.class public final Landroid/content/pm/PackageInstaller$PreapprovalDetails;
.super Ljava/lang/Object;
.source "PackageInstaller.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PreapprovalDetails"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageInstaller$PreapprovalDetails$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/PackageInstaller$PreapprovalDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mIcon:Landroid/graphics/Bitmap;

.field private final blacklist mLabel:Ljava/lang/CharSequence;

.field private final blacklist mLocale:Landroid/icu/util/ULocale;

.field private final blacklist mPackageName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 5298
    new-instance v0, Landroid/content/pm/PackageInstaller$PreapprovalDetails$1;

    invoke-direct {v0}, Landroid/content/pm/PackageInstaller$PreapprovalDetails$1;-><init>()V

    sput-object v0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Landroid/icu/util/ULocale;Ljava/lang/String;)V
    .registers 6

    .line 5247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5248
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mIcon:Landroid/graphics/Bitmap;

    .line 5249
    iput-object p2, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mLabel:Ljava/lang/CharSequence;

    .line 5250
    iget-object p1, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mLabel:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    const-string v0, "App label cannot be empty."

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 5252
    iput-object p3, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mLocale:Landroid/icu/util/ULocale;

    .line 5253
    iget-object p1, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mLocale:Landroid/icu/util/ULocale;

    invoke-static {p1}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-eqz p1, :cond_1f

    move p1, p2

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    const-string p3, "Locale cannot be null."

    invoke-static {p1, p3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 5255
    iput-object p4, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mPackageName:Ljava/lang/String;

    .line 5256
    iget-object p1, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mPackageName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, p2

    const-string p2, "Package name cannot be empty."

    invoke-static {p1, p2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 5258
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7

    .line 5279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5280
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 5281
    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_d

    const/4 v0, 0x0

    goto :goto_15

    :cond_d
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 5282
    :goto_15
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    .line 5283
    new-instance v3, Landroid/icu/util/ULocale;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    .line 5284
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object p1

    .line 5286
    iput-object v0, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mIcon:Landroid/graphics/Bitmap;

    .line 5287
    iput-object v2, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mLabel:Ljava/lang/CharSequence;

    .line 5288
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    const-string v2, "App label cannot be empty."

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 5290
    iput-object v3, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mLocale:Landroid/icu/util/ULocale;

    .line 5291
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mLocale:Landroid/icu/util/ULocale;

    invoke-static {v0}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-eqz v0, :cond_41

    move v0, v1

    goto :goto_42

    :cond_41
    const/4 v0, 0x0

    :goto_42
    const-string v2, "Locale cannot be null."

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 5293
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mPackageName:Ljava/lang/String;

    .line 5294
    iget-object p1, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mPackageName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v1

    const-string v0, "Package name cannot be empty."

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 5296
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5461
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 5276
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getIcon()Landroid/graphics/Bitmap;
    .registers 2

    .line 5413
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public whitelist getLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 5421
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getLocale()Landroid/icu/util/ULocale;
    .registers 2

    .line 5429
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mLocale:Landroid/icu/util/ULocale;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 5437
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 5446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreapprovalDetails { icon = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", label = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", locale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mLocale:Landroid/icu/util/ULocale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 5262
    nop

    .line 5263
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    .line 5264
    const/4 v0, 0x1

    int-to-byte v0, v0

    goto :goto_9

    .line 5263
    :cond_8
    const/4 v0, 0x0

    .line 5266
    :goto_9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 5267
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_15

    .line 5268
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5270
    :cond_15
    iget-object p2, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 5271
    iget-object p2, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mLocale:Landroid/icu/util/ULocale;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 5272
    iget-object p2, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 5273
    return-void
.end method
