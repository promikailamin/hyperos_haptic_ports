.class Lmiui/view/ScreenView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "ScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/view/ScreenView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field blacklist currentScreen:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2093
    new-instance v0, Lmiui/view/ScreenView$SavedState$1;

    invoke-direct {v0}, Lmiui/view/ScreenView$SavedState$1;-><init>()V

    sput-object v0, Lmiui/view/ScreenView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 2111
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 2104
    const/4 v0, -0x1

    iput v0, p0, Lmiui/view/ScreenView$SavedState;->currentScreen:I

    .line 2112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/view/ScreenView$SavedState;->currentScreen:I

    .line 2113
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lmiui/view/ScreenView$SavedState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/view/ScreenView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcelable;)V
    .registers 3
    .param p1, "superState"    # Landroid/os/Parcelable;

    .line 2107
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2104
    const/4 v0, -0x1

    iput v0, p0, Lmiui/view/ScreenView$SavedState;->currentScreen:I

    .line 2108
    return-void
.end method


# virtual methods
.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2117
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2118
    iget v0, p0, Lmiui/view/ScreenView$SavedState;->currentScreen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2119
    return-void
.end method
