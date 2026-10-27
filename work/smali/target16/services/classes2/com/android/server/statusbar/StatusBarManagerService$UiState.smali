.class public Lcom/android/server/statusbar/StatusBarManagerService$UiState;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"


# instance fields
.field public mAppearance:I

.field public mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

.field public mBehavior:I

.field public mDisabled1:I

.field public mDisabled2:I

.field public mImeBackDisposition:I

.field public mImeWindowVis:I

.field public mLetterboxDetails:[Lcom/android/internal/statusbar/LetterboxDetails;

.field public mNavbarColorManagedByIme:Z

.field public mPackageName:Ljava/lang/String;

.field public mRequestedVisibleTypes:I

.field public mShowImeSwitcher:Z

.field public mTransientBarTypes:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAppearance(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearance:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppearanceRegions(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)[Lcom/android/internal/view/AppearanceRegion;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBehavior(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mBehavior:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmImeBackDisposition(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeBackDisposition:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmImeWindowVis(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeWindowVis:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLetterboxDetails(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)[Lcom/android/internal/statusbar/LetterboxDetails;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mLetterboxDetails:[Lcom/android/internal/statusbar/LetterboxDetails;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNavbarColorManagedByIme(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mNavbarColorManagedByIme:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageName(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRequestedVisibleTypes(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mRequestedVisibleTypes:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmShowImeSwitcher(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mShowImeSwitcher:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTransientBarTypes(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$mclearTransient(Lcom/android/server/statusbar/StatusBarManagerService$UiState;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->clearTransient(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdisableEquals(Lcom/android/server/statusbar/StatusBarManagerService$UiState;II)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->disableEquals(II)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetDisabled1(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->getDisabled1()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetDisabled2(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->getDisabled2()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetBarAttributes(Lcom/android/server/statusbar/StatusBarManagerService$UiState;I[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;)V
    .registers 8

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->setBarAttributes(I[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDisabled(Lcom/android/server/statusbar/StatusBarManagerService$UiState;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->setDisabled(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetImeWindowState(Lcom/android/server/statusbar/StatusBarManagerService$UiState;IIZ)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->setImeWindowState(IIZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowTransient(Lcom/android/server/statusbar/StatusBarManagerService$UiState;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->showTransient(I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1670
    iput v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearance:I

    .line 1671
    new-array v1, v0, [Lcom/android/internal/view/AppearanceRegion;

    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 1673
    iput-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mNavbarColorManagedByIme:Z

    .line 1675
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v1

    iput v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mRequestedVisibleTypes:I

    .line 1676
    const-string/jumbo v1, "none"

    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mPackageName:Ljava/lang/String;

    .line 1677
    iput v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled1:I

    .line 1678
    iput v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled2:I

    .line 1679
    iput v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeWindowVis:I

    .line 1681
    iput v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeBackDisposition:I

    .line 1683
    iput-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mShowImeSwitcher:Z

    .line 1684
    new-array v0, v0, [Lcom/android/internal/statusbar/LetterboxDetails;

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mLetterboxDetails:[Lcom/android/internal/statusbar/LetterboxDetails;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;-><init>()V

    return-void
.end method


# virtual methods
.method public final clearTransient(I)V
    .registers 3

    .line 1705
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:I

    return-void
.end method

.method public final disableEquals(II)Z
    .registers 4

    .line 1722
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled1:I

    if-ne v0, p1, :cond_a

    iget p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled2:I

    if-ne p0, p2, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final getDisabled1()I
    .registers 1

    .line 1709
    iget p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled1:I

    return p0
.end method

.method public final getDisabled2()I
    .registers 1

    .line 1713
    iget p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled2:I

    return p0
.end method

.method public final setBarAttributes(I[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;)V
    .registers 8

    .line 1691
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearance:I

    .line 1692
    iput-object p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 1693
    iput-boolean p3, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mNavbarColorManagedByIme:Z

    .line 1694
    iput p4, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mBehavior:I

    .line 1695
    iput p5, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mRequestedVisibleTypes:I

    .line 1696
    iput-object p6, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mPackageName:Ljava/lang/String;

    .line 1697
    iput-object p7, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mLetterboxDetails:[Lcom/android/internal/statusbar/LetterboxDetails;

    return-void
.end method

.method public final setDisabled(II)V
    .registers 3

    .line 1717
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled1:I

    .line 1718
    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled2:I

    return-void
.end method

.method public final setImeWindowState(IIZ)V
    .registers 4

    .line 1728
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeWindowVis:I

    .line 1729
    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeBackDisposition:I

    .line 1730
    iput-boolean p3, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mShowImeSwitcher:Z

    return-void
.end method

.method public final showTransient(I)V
    .registers 3

    .line 1701
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:I

    return-void
.end method
