.class Lcom/android/server/usage/UsageStatsService$ActivityData;
.super Ljava/lang/Object;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityData"
.end annotation


# instance fields
.field public lastEvent:I

.field private final mTaskRootClass:Ljava/lang/String;

.field private final mTaskRootPackage:Ljava/lang/String;

.field private final mUsageSourcePackage:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmTaskRootClass(Lcom/android/server/usage/UsageStatsService$ActivityData;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$ActivityData;->mTaskRootClass:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTaskRootPackage(Lcom/android/server/usage/UsageStatsService$ActivityData;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$ActivityData;->mTaskRootPackage:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUsageSourcePackage(Lcom/android/server/usage/UsageStatsService$ActivityData;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$ActivityData;->mUsageSourcePackage:Ljava/lang/String;

    return-object p0
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "taskRootPackage"    # Ljava/lang/String;
    .param p2, "taskRootClass"    # Ljava/lang/String;
    .param p3, "sourcePackage"    # Ljava/lang/String;

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/usage/UsageStatsService$ActivityData;->lastEvent:I

    .line 244
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$ActivityData;->mTaskRootPackage:Ljava/lang/String;

    .line 245
    iput-object p2, p0, Lcom/android/server/usage/UsageStatsService$ActivityData;->mTaskRootClass:Ljava/lang/String;

    .line 246
    iput-object p3, p0, Lcom/android/server/usage/UsageStatsService$ActivityData;->mUsageSourcePackage:Ljava/lang/String;

    .line 247
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/usage/UsageStatsService$ActivityData-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/usage/UsageStatsService$ActivityData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
