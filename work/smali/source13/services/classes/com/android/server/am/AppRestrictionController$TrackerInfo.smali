.class Lcom/android/server/am/AppRestrictionController$TrackerInfo;
.super Ljava/lang/Object;
.source "AppRestrictionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppRestrictionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrackerInfo"
.end annotation


# instance fields
.field final mInfo:[B

.field final mType:I

.field final synthetic this$0:Lcom/android/server/am/AppRestrictionController;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppRestrictionController;)V
    .registers 2

    .line 1427
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1428
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mType:I

    .line 1429
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mInfo:[B

    .line 1430
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/AppRestrictionController;I[B)V
    .registers 4
    .param p2, "type"    # I
    .param p3, "info"    # [B

    .line 1432
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1433
    iput p2, p0, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mType:I

    .line 1434
    iput-object p3, p0, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mInfo:[B

    .line 1435
    return-void
.end method
