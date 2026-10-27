.class Lcom/android/internal/widget/LockPatternView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternView;
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
            "Lcom/android/internal/widget/LockPatternView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDisplayMode:I

.field private final blacklist mInStealthMode:Z

.field private final blacklist mInputEnabled:Z

.field private final blacklist mInputMode:I

.field private final blacklist mPatternSize:B

.field private final blacklist mSerializedPattern:Ljava/lang/String;

.field private final blacklist mShowErrorPath:Z

.field private final blacklist mVisibleDots:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1994
    new-instance v0, Lcom/android/internal/widget/LockPatternView$SavedState$1;

    invoke-direct {v0}, Lcom/android/internal/widget/LockPatternView$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/LockPatternView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 1937
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1938
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mSerializedPattern:Ljava/lang/String;

    .line 1939
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mDisplayMode:I

    .line 1940
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mPatternSize:B

    .line 1941
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mInputEnabled:Z

    .line 1942
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mInputMode:I

    .line 1943
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mInStealthMode:Z

    .line 1944
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mVisibleDots:Z

    .line 1945
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mShowErrorPath:Z

    .line 1946
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/internal/widget/LockPatternView-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor greylist <init>(Landroid/os/Parcelable;Ljava/lang/String;IBZIZZZ)V
    .registers 10

    .line 1921
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1922
    iput-object p2, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mSerializedPattern:Ljava/lang/String;

    .line 1923
    iput p3, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mDisplayMode:I

    .line 1924
    iput-byte p4, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mPatternSize:B

    .line 1925
    iput-boolean p5, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mInputEnabled:Z

    .line 1926
    iput p6, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mInputMode:I

    .line 1927
    iput-boolean p7, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mInStealthMode:Z

    .line 1928
    iput-boolean p8, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mVisibleDots:Z

    .line 1929
    iput-boolean p9, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mShowErrorPath:Z

    .line 1930
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcelable;Ljava/lang/String;IBZIZZZLcom/android/internal/widget/LockPatternView-IA;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Lcom/android/internal/widget/LockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IBZIZZZ)V

    return-void
.end method


# virtual methods
.method blacklist getDisplayMode()I
    .registers 2

    .line 1953
    iget v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mDisplayMode:I

    return v0
.end method

.method blacklist getInputMode()I
    .registers 2

    .line 1965
    iget v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mInputMode:I

    return v0
.end method

.method blacklist getPatternSize()B
    .registers 2

    .line 1957
    iget-byte v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mPatternSize:B

    return v0
.end method

.method blacklist getSerializedPattern()Ljava/lang/String;
    .registers 2

    .line 1949
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mSerializedPattern:Ljava/lang/String;

    return-object v0
.end method

.method blacklist isInStealthMode()Z
    .registers 2

    .line 1969
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mInStealthMode:Z

    return v0
.end method

.method blacklist isInputEnabled()Z
    .registers 2

    .line 1961
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mInputEnabled:Z

    return v0
.end method

.method blacklist isShowErrorPath()Z
    .registers 2

    .line 1977
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mShowErrorPath:Z

    return v0
.end method

.method blacklist isVisibleDots()Z
    .registers 2

    .line 1973
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mVisibleDots:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1982
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1983
    iget-object p2, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mSerializedPattern:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1984
    iget p2, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mDisplayMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1985
    iget-byte p2, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mPatternSize:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1986
    iget-boolean p2, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mInputEnabled:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1987
    iget p2, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mInputMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1988
    iget-boolean p2, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mInStealthMode:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1989
    iget-boolean p2, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mVisibleDots:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1990
    iget-boolean p2, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mShowErrorPath:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1991
    return-void
.end method
