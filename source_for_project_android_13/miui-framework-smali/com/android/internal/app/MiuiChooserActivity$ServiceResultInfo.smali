.class Lcom/android/internal/app/MiuiChooserActivity$ServiceResultInfo;
.super Ljava/lang/Object;
.source "MiuiChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MiuiChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceResultInfo"
.end annotation


# instance fields
.field public final blacklist connection:Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;

.field public final blacklist originalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

.field public final blacklist resultTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist userHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/chooser/DisplayResolveInfo;Ljava/util/List;Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;Landroid/os/UserHandle;)V
    .registers 5
    .param p1, "ot"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .param p3, "c"    # Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;
    .param p4, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            "Ljava/util/List<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;",
            "Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 4392
    .local p2, "rt":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4393
    iput-object p1, p0, Lcom/android/internal/app/MiuiChooserActivity$ServiceResultInfo;->originalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 4394
    iput-object p2, p0, Lcom/android/internal/app/MiuiChooserActivity$ServiceResultInfo;->resultTargets:Ljava/util/List;

    .line 4395
    iput-object p3, p0, Lcom/android/internal/app/MiuiChooserActivity$ServiceResultInfo;->connection:Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;

    .line 4396
    iput-object p4, p0, Lcom/android/internal/app/MiuiChooserActivity$ServiceResultInfo;->userHandle:Landroid/os/UserHandle;

    .line 4397
    return-void
.end method
