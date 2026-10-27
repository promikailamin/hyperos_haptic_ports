.class public abstract Landroid/content/pm/PackageParser$IntentInfo;
.super Landroid/content/IntentFilter;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "IntentInfo"
.end annotation


# instance fields
.field public greylist banner:I

.field public greylist hasDefault:Z

.field public greylist icon:I

.field public greylist labelRes:I

.field public greylist logo:I

.field public greylist nonLocalizedLabel:Ljava/lang/CharSequence;

.field public greylist-max-o preferred:I


# direct methods
.method protected constructor greylist <init>()V
    .registers 1

    .line 8492
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 8493
    return-void
.end method

.method protected constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 8496
    invoke-direct {p0, p1}, Landroid/content/IntentFilter;-><init>(Landroid/os/Parcel;)V

    .line 8497
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    iput-boolean v1, p0, Landroid/content/pm/PackageParser$IntentInfo;->hasDefault:Z

    .line 8498
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageParser$IntentInfo;->labelRes:I

    .line 8499
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageParser$IntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 8500
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageParser$IntentInfo;->icon:I

    .line 8501
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageParser$IntentInfo;->logo:I

    .line 8502
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageParser$IntentInfo;->banner:I

    .line 8503
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/content/pm/PackageParser$IntentInfo;->preferred:I

    .line 8504
    return-void
.end method


# virtual methods
.method public greylist-max-o writeIntentInfoToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 8508
    invoke-super {p0, p1, p2}, Landroid/content/IntentFilter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 8509
    iget-boolean p2, p0, Landroid/content/pm/PackageParser$IntentInfo;->hasDefault:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8510
    iget p2, p0, Landroid/content/pm/PackageParser$IntentInfo;->labelRes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8511
    iget-object p2, p0, Landroid/content/pm/PackageParser$IntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 8512
    iget p2, p0, Landroid/content/pm/PackageParser$IntentInfo;->icon:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8513
    iget p2, p0, Landroid/content/pm/PackageParser$IntentInfo;->logo:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8514
    iget p2, p0, Landroid/content/pm/PackageParser$IntentInfo;->banner:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8515
    iget p2, p0, Landroid/content/pm/PackageParser$IntentInfo;->preferred:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8516
    return-void
.end method
