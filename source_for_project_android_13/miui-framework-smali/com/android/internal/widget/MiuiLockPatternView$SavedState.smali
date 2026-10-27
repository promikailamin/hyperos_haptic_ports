.class Lcom/android/internal/widget/MiuiLockPatternView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "MiuiLockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/MiuiLockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/widget/MiuiLockPatternView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDisplayMode:I

.field private final blacklist mInStealthMode:Z

.field private final blacklist mInputEnabled:Z

.field private final blacklist mSerializedPattern:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1029
    new-instance v0, Lcom/android/internal/widget/MiuiLockPatternView$SavedState$1;

    invoke-direct {v0}, Lcom/android/internal/widget/MiuiLockPatternView$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/MiuiLockPatternView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 997
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 998
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView$SavedState;->mSerializedPattern:Ljava/lang/String;

    .line 999
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MiuiLockPatternView$SavedState;->mDisplayMode:I

    .line 1000
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/widget/MiuiLockPatternView$SavedState;->mInputEnabled:Z

    .line 1001
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/MiuiLockPatternView$SavedState;->mInStealthMode:Z

    .line 1002
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/internal/widget/MiuiLockPatternView$SavedState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/widget/MiuiLockPatternView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcelable;Ljava/lang/String;IZZ)V
    .registers 6
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "serializedPattern"    # Ljava/lang/String;
    .param p3, "displayMode"    # I
    .param p4, "inputEnabled"    # Z
    .param p5, "inStealthMode"    # Z

    .line 986
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 987
    iput-object p2, p0, Lcom/android/internal/widget/MiuiLockPatternView$SavedState;->mSerializedPattern:Ljava/lang/String;

    .line 988
    iput p3, p0, Lcom/android/internal/widget/MiuiLockPatternView$SavedState;->mDisplayMode:I

    .line 989
    iput-boolean p4, p0, Lcom/android/internal/widget/MiuiLockPatternView$SavedState;->mInputEnabled:Z

    .line 990
    iput-boolean p5, p0, Lcom/android/internal/widget/MiuiLockPatternView$SavedState;->mInStealthMode:Z

    .line 991
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcelable;Ljava/lang/String;IZZLcom/android/internal/widget/MiuiLockPatternView$SavedState-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/widget/MiuiLockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZ)V

    return-void
.end method


# virtual methods
.method public blacklist getDisplayMode()I
    .registers 2

    .line 1009
    iget v0, p0, Lcom/android/internal/widget/MiuiLockPatternView$SavedState;->mDisplayMode:I

    return v0
.end method

.method public blacklist getSerializedPattern()Ljava/lang/String;
    .registers 2

    .line 1005
    iget-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView$SavedState;->mSerializedPattern:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isInStealthMode()Z
    .registers 2

    .line 1017
    iget-boolean v0, p0, Lcom/android/internal/widget/MiuiLockPatternView$SavedState;->mInStealthMode:Z

    return v0
.end method

.method public blacklist isInputEnabled()Z
    .registers 2

    .line 1013
    iget-boolean v0, p0, Lcom/android/internal/widget/MiuiLockPatternView$SavedState;->mInputEnabled:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1022
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1023
    iget-object v0, p0, Lcom/android/internal/widget/MiuiLockPatternView$SavedState;->mSerializedPattern:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1024
    iget v0, p0, Lcom/android/internal/widget/MiuiLockPatternView$SavedState;->mDisplayMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1025
    iget-boolean v0, p0, Lcom/android/internal/widget/MiuiLockPatternView$SavedState;->mInputEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1026
    iget-boolean v0, p0, Lcom/android/internal/widget/MiuiLockPatternView$SavedState;->mInStealthMode:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1027
    return-void
.end method
