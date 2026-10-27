.class Lcom/android/server/alarm/AlarmManagerService$1;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/alarm/Alarm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/alarm/AlarmManagerService;

    .line 1340
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$1;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/alarm/Alarm;Lcom/android/server/alarm/Alarm;)I
    .registers 12
    .param p1, "lhs"    # Lcom/android/server/alarm/Alarm;
    .param p2, "rhs"    # Lcom/android/server/alarm/Alarm;

    .line 1345
    iget v0, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v0, v0, 0x10

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    .line 1346
    .local v0, "lhsIdleUntil":Z
    :goto_b
    iget v3, p2, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_13

    move v3, v2

    goto :goto_14

    :cond_13
    move v3, v1

    .line 1347
    .local v3, "rhsIdleUntil":Z
    :goto_14
    const/4 v4, -0x1

    if-eq v0, v3, :cond_1b

    .line 1348
    if-eqz v0, :cond_1a

    move v2, v4

    :cond_1a
    return v2

    .line 1352
    :cond_1b
    iget-object v5, p1, Lcom/android/server/alarm/Alarm;->priorityClass:Lcom/android/server/alarm/AlarmManagerService$PriorityClass;

    iget v5, v5, Lcom/android/server/alarm/AlarmManagerService$PriorityClass;->priority:I

    iget-object v6, p2, Lcom/android/server/alarm/Alarm;->priorityClass:Lcom/android/server/alarm/AlarmManagerService$PriorityClass;

    iget v6, v6, Lcom/android/server/alarm/AlarmManagerService$PriorityClass;->priority:I

    if-ge v5, v6, :cond_26

    .line 1353
    return v4

    .line 1354
    :cond_26
    iget-object v5, p1, Lcom/android/server/alarm/Alarm;->priorityClass:Lcom/android/server/alarm/AlarmManagerService$PriorityClass;

    iget v5, v5, Lcom/android/server/alarm/AlarmManagerService$PriorityClass;->priority:I

    iget-object v6, p2, Lcom/android/server/alarm/Alarm;->priorityClass:Lcom/android/server/alarm/AlarmManagerService$PriorityClass;

    iget v6, v6, Lcom/android/server/alarm/AlarmManagerService$PriorityClass;->priority:I

    if-le v5, v6, :cond_31

    .line 1355
    return v2

    .line 1359
    :cond_31
    invoke-virtual {p1}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide v5

    invoke-virtual {p2}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_3e

    .line 1360
    return v4

    .line 1361
    :cond_3e
    invoke-virtual {p1}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_4b

    .line 1362
    return v2

    .line 1365
    :cond_4b
    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1340
    check-cast p1, Lcom/android/server/alarm/Alarm;

    check-cast p2, Lcom/android/server/alarm/Alarm;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService$1;->compare(Lcom/android/server/alarm/Alarm;Lcom/android/server/alarm/Alarm;)I

    move-result p1

    return p1
.end method
