.class public final Landroid/content/pm/PackageManager$ComponentEnabledSetting;
.super Ljava/lang/Object;
.source "PackageManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComponentEnabledSetting"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/PackageManager$ComponentEnabledSetting;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mComponentName:Landroid/content/ComponentName;

.field private final blacklist mEnabledFlags:I

.field private final blacklist mEnabledState:I

.field private final blacklist mPackageName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 793
    new-instance v0, Landroid/content/pm/PackageManager$ComponentEnabledSetting$1;

    invoke-direct {v0}, Landroid/content/pm/PackageManager$ComponentEnabledSetting$1;-><init>()V

    sput-object v0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/ComponentName;II)V
    .registers 5

    .line 648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 649
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mPackageName:Ljava/lang/String;

    .line 650
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    iput-object p1, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mComponentName:Landroid/content/ComponentName;

    .line 651
    iput p2, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mEnabledState:I

    .line 652
    iput p3, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mEnabledFlags:I

    .line 653
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 770
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 774
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 775
    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    move-object v1, v2

    goto :goto_12

    :cond_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 776
    :goto_12
    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_18

    move-object v0, v2

    goto :goto_20

    :cond_18
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 777
    :goto_20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 778
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 780
    iput-object v1, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mPackageName:Ljava/lang/String;

    .line 781
    iput-object v0, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mComponentName:Landroid/content/ComponentName;

    .line 782
    iput v3, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mEnabledState:I

    .line 783
    const-class v0, Landroid/content/pm/PackageManager$EnabledState;

    iget v1, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mEnabledState:I

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 785
    iput p1, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mEnabledFlags:I

    .line 786
    const-class p1, Landroid/content/pm/PackageManager$EnabledFlags;

    iget v0, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mEnabledFlags:I

    invoke-static {p1, v2, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 790
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4

    .line 665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 666
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mPackageName:Ljava/lang/String;

    .line 667
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mComponentName:Landroid/content/ComponentName;

    .line 668
    iput p2, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mEnabledState:I

    .line 669
    iput p3, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mEnabledFlags:I

    .line 670
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 812
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 765
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getClassName()Ljava/lang/String;
    .registers 2

    .line 692
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 693
    iget-object v0, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 695
    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 728
    iget-object v0, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public whitelist getEnabledFlags()I
    .registers 2

    .line 744
    iget v0, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mEnabledFlags:I

    return v0
.end method

.method public whitelist getEnabledState()I
    .registers 2

    .line 736
    iget v0, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mEnabledState:I

    return v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 679
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 680
    iget-object v0, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 682
    :cond_d
    iget-object v0, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isComponent()Z
    .registers 2

    .line 705
    iget-object v0, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 753
    nop

    .line 754
    iget-object v0, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    int-to-byte v0, v0

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 755
    :goto_9
    iget-object v1, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_10

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    .line 756
    :cond_10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 757
    iget-object v0, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 758
    :cond_1c
    iget-object v0, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_25

    iget-object v0, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 759
    :cond_25
    iget p2, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mEnabledState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 760
    iget p2, p0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->mEnabledFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 761
    return-void
.end method
