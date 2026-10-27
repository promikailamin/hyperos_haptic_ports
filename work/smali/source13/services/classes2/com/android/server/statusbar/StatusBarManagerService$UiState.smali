.class Lcom/android/server/statusbar/StatusBarManagerService$UiState;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/statusbar/StatusBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UiState"
.end annotation


# instance fields
.field private mAppearance:I

.field private mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

.field private mBehavior:I

.field private mDisabled1:I

.field private mDisabled2:I

.field private mImeBackDisposition:I

.field private mImeToken:Landroid/os/IBinder;

.field private mImeWindowVis:I

.field private mNavbarColorManagedByIme:Z

.field private mPackageName:Ljava/lang/String;

.field private mRequestedVisibilities:Landroid/view/InsetsVisibilities;

.field private mShowImeSwitcher:Z

.field private final mTransientBarTypes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmAppearance(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .registers 1

    iget p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearance:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppearanceRegions(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)[Lcom/android/internal/view/AppearanceRegion;
    .registers 1

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBehavior(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .registers 1

    iget p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mBehavior:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmImeBackDisposition(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .registers 1

    iget p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeBackDisposition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmImeToken(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImeWindowVis(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .registers 1

    iget p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeWindowVis:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNavbarColorManagedByIme(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mNavbarColorManagedByIme:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageName(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRequestedVisibilities(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Landroid/view/InsetsVisibilities;
    .registers 1

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShowImeSwitcher(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mShowImeSwitcher:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTransientBarTypes(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mclearTransient(Lcom/android/server/statusbar/StatusBarManagerService$UiState;[I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->clearTransient([I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdisableEquals(Lcom/android/server/statusbar/StatusBarManagerService$UiState;II)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->disableEquals(II)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetDisabled1(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->getDisabled1()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetDisabled2(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->getDisabled2()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetBarAttributes(Lcom/android/server/statusbar/StatusBarManagerService$UiState;I[Lcom/android/internal/view/AppearanceRegion;ZILandroid/view/InsetsVisibilities;Ljava/lang/String;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->setBarAttributes(I[Lcom/android/internal/view/AppearanceRegion;ZILandroid/view/InsetsVisibilities;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDisabled(Lcom/android/server/statusbar/StatusBarManagerService$UiState;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->setDisabled(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetImeWindowState(Lcom/android/server/statusbar/StatusBarManagerService$UiState;IIZLandroid/os/IBinder;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->setImeWindowState(IIZLandroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowTransient(Lcom/android/server/statusbar/StatusBarManagerService$UiState;[I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->showTransient([I)V

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 1221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1222
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearance:I

    .line 1223
    new-array v1, v0, [Lcom/android/internal/view/AppearanceRegion;

    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 1224
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:Landroid/util/ArraySet;

    .line 1225
    iput-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mNavbarColorManagedByIme:Z

    .line 1227
    new-instance v1, Landroid/view/InsetsVisibilities;

    invoke-direct {v1}, Landroid/view/InsetsVisibilities;-><init>()V

    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    .line 1228
    const-string/jumbo v1, "none"

    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mPackageName:Ljava/lang/String;

    .line 1229
    iput v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled1:I

    .line 1230
    iput v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled2:I

    .line 1231
    iput v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeWindowVis:I

    .line 1232
    iput v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeBackDisposition:I

    .line 1233
    iput-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mShowImeSwitcher:Z

    .line 1234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeToken:Landroid/os/IBinder;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService$UiState-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;-><init>()V

    return-void
.end method

.method private clearTransient([I)V
    .registers 7
    .param p1, "types"    # [I

    .line 1255
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_12

    aget v2, p1, v1

    .line 1256
    .local v2, "type":I
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:Landroid/util/ArraySet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1255
    .end local v2    # "type":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1258
    :cond_12
    return-void
.end method

.method private disableEquals(II)Z
    .registers 4
    .param p1, "disabled1"    # I
    .param p2, "disabled2"    # I

    .line 1274
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled1:I

    if-ne v0, p1, :cond_a

    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled2:I

    if-ne v0, p2, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private getDisabled1()I
    .registers 2

    .line 1261
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled1:I

    return v0
.end method

.method private getDisabled2()I
    .registers 2

    .line 1265
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled2:I

    return v0
.end method

.method private setBarAttributes(I[Lcom/android/internal/view/AppearanceRegion;ZILandroid/view/InsetsVisibilities;Ljava/lang/String;)V
    .registers 7
    .param p1, "appearance"    # I
    .param p2, "appearanceRegions"    # [Lcom/android/internal/view/AppearanceRegion;
    .param p3, "navbarColorManagedByIme"    # Z
    .param p4, "behavior"    # I
    .param p5, "requestedVisibilities"    # Landroid/view/InsetsVisibilities;
    .param p6, "packageName"    # Ljava/lang/String;

    .line 1240
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearance:I

    .line 1241
    iput-object p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 1242
    iput-boolean p3, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mNavbarColorManagedByIme:Z

    .line 1243
    iput p4, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mBehavior:I

    .line 1244
    iput-object p5, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    .line 1245
    iput-object p6, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mPackageName:Ljava/lang/String;

    .line 1246
    return-void
.end method

.method private setDisabled(II)V
    .registers 3
    .param p1, "disabled1"    # I
    .param p2, "disabled2"    # I

    .line 1269
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled1:I

    .line 1270
    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled2:I

    .line 1271
    return-void
.end method

.method private setImeWindowState(IIZLandroid/os/IBinder;)V
    .registers 5
    .param p1, "vis"    # I
    .param p2, "backDisposition"    # I
    .param p3, "showImeSwitcher"    # Z
    .param p4, "token"    # Landroid/os/IBinder;

    .line 1279
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeWindowVis:I

    .line 1280
    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeBackDisposition:I

    .line 1281
    iput-boolean p3, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mShowImeSwitcher:Z

    .line 1282
    iput-object p4, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeToken:Landroid/os/IBinder;

    .line 1283
    return-void
.end method

.method private showTransient([I)V
    .registers 7
    .param p1, "types"    # [I

    .line 1249
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_12

    aget v2, p1, v1

    .line 1250
    .local v2, "type":I
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:Landroid/util/ArraySet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1249
    .end local v2    # "type":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1252
    :cond_12
    return-void
.end method
