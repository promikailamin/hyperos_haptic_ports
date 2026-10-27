.class public final Landroid/hardware/biometrics/FallbackOption;
.super Ljava/lang/Object;
.source "FallbackOption.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/biometrics/FallbackOption;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mIconType:I

.field private final blacklist mText:Ljava/lang/CharSequence;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 54
    new-instance v0, Landroid/hardware/biometrics/FallbackOption$1;

    invoke-direct {v0}, Landroid/hardware/biometrics/FallbackOption$1;-><init>()V

    sput-object v0, Landroid/hardware/biometrics/FallbackOption;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/FallbackOption;->mText:Ljava/lang/CharSequence;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/hardware/biometrics/FallbackOption;->mIconType:I

    .line 52
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/biometrics/FallbackOption-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/biometrics/FallbackOption;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;I)V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/hardware/biometrics/FallbackOption;->mText:Ljava/lang/CharSequence;

    .line 46
    iput p2, p0, Landroid/hardware/biometrics/FallbackOption;->mIconType:I

    .line 47
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getIconType()I
    .registers 2

    .line 40
    iget v0, p0, Landroid/hardware/biometrics/FallbackOption;->mIconType:I

    return v0
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .registers 2

    .line 36
    iget-object v0, p0, Landroid/hardware/biometrics/FallbackOption;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 74
    iget-object p2, p0, Landroid/hardware/biometrics/FallbackOption;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 75
    iget p2, p0, Landroid/hardware/biometrics/FallbackOption;->mIconType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    return-void
.end method
