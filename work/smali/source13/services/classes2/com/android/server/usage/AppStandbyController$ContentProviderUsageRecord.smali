.class Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;
.super Ljava/lang/Object;
.source "AppStandbyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppStandbyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContentProviderUsageRecord"
.end annotation


# static fields
.field private static final sPool:Lcom/android/server/usage/AppStandbyController$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/usage/AppStandbyController$Pool<",
            "Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public name:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public userId:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 554
    new-instance v0, Lcom/android/server/usage/AppStandbyController$Pool;

    const/16 v1, 0xa

    new-array v1, v1, [Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;

    invoke-direct {v0, v1}, Lcom/android/server/usage/AppStandbyController$Pool;-><init>([Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;->sPool:Lcom/android/server/usage/AppStandbyController$Pool;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 563
    sget-object v0, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;->sPool:Lcom/android/server/usage/AppStandbyController$Pool;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;

    .line 564
    .local v0, "r":Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;
    if-nez v0, :cond_10

    .line 565
    new-instance v1, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;

    invoke-direct {v1}, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;-><init>()V

    move-object v0, v1

    .line 567
    :cond_10
    iput-object p0, v0, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;->name:Ljava/lang/String;

    .line 568
    iput-object p1, v0, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;->packageName:Ljava/lang/String;

    .line 569
    iput p2, v0, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;->userId:I

    .line 570
    return-object v0
.end method


# virtual methods
.method public recycle()V
    .registers 2

    .line 574
    sget-object v0, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;->sPool:Lcom/android/server/usage/AppStandbyController$Pool;

    invoke-virtual {v0, p0}, Lcom/android/server/usage/AppStandbyController$Pool;->recycle(Ljava/lang/Object;)V

    .line 575
    return-void
.end method
