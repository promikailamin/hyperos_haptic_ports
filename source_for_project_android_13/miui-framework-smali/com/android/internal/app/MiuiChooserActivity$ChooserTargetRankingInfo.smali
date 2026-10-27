.class Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetRankingInfo;
.super Ljava/lang/Object;
.source "MiuiChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MiuiChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChooserTargetRankingInfo"
.end annotation


# instance fields
.field public final blacklist scores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist userHandle:Landroid/os/UserHandle;


# direct methods
.method constructor blacklist <init>(Ljava/util/List;Landroid/os/UserHandle;)V
    .registers 3
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 4405
    .local p1, "chooserTargetScores":Ljava/util/List;, "Ljava/util/List<Landroid/app/prediction/AppTarget;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4406
    iput-object p1, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetRankingInfo;->scores:Ljava/util/List;

    .line 4407
    iput-object p2, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetRankingInfo;->userHandle:Landroid/os/UserHandle;

    .line 4408
    return-void
.end method
