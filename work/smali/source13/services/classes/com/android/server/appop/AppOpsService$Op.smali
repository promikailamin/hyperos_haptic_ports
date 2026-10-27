.class final Lcom/android/server/appop/AppOpsService$Op;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Op"
.end annotation


# instance fields
.field final mAttributions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/appop/AppOpsService$AttributedOp;",
            ">;"
        }
    .end annotation
.end field

.field private mode:I

.field op:I

.field final packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/appop/AppOpsService;

.field uid:I

.field final uidState:Lcom/android/server/appop/AppOpsService$UidState;


# direct methods
.method static bridge synthetic -$$Nest$fgetmode(Lcom/android/server/appop/AppOpsService$Op;)I
    .registers 1

    iget p0, p0, Lcom/android/server/appop/AppOpsService$Op;->mode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmode(Lcom/android/server/appop/AppOpsService$Op;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/appop/AppOpsService$Op;->mode:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetOrCreateAttribution(Lcom/android/server/appop/AppOpsService$Op;Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$AttributedOp;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/appop/AppOpsService$Op;->getOrCreateAttribution(Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$AttributedOp;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;II)V
    .registers 8
    .param p1, "this$0"    # Lcom/android/server/appop/AppOpsService;
    .param p2, "uidState"    # Lcom/android/server/appop/AppOpsService$UidState;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "op"    # I
    .param p5, "uid"    # I

    .line 1464
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$Op;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1462
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    .line 1465
    iput p4, p0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 1466
    iput p5, p0, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 1467
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    .line 1468
    iput-object p3, p0, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 1469
    invoke-static {p4}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mode:I

    .line 1470
    return-void
.end method

.method private getOrCreateAttribution(Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$AttributedOp;
    .registers 6
    .param p1, "parent"    # Lcom/android/server/appop/AppOpsService$Op;
    .param p2, "attributionTag"    # Ljava/lang/String;

    .line 1492
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$AttributedOp;

    .line 1493
    .local v0, "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    if-nez v0, :cond_17

    .line 1494
    new-instance v1, Lcom/android/server/appop/AppOpsService$AttributedOp;

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {v1, v2, p2, p1}, Lcom/android/server/appop/AppOpsService$AttributedOp;-><init>(Lcom/android/server/appop/AppOpsService;Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Op;)V

    move-object v0, v1

    .line 1495
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1498
    :cond_17
    return-object v0
.end method


# virtual methods
.method createEntryLocked()Landroid/app/AppOpsManager$OpEntry;
    .registers 6

    .line 1502
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1504
    .local v0, "numAttributions":I
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1506
    .local v1, "attributionEntries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/AppOpsManager$AttributedOpEntry;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v0, :cond_28

    .line 1507
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    .line 1508
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$AttributedOp;

    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService$AttributedOp;->createAttributedOpEntryLocked()Landroid/app/AppOpsManager$AttributedOpEntry;

    move-result-object v4

    .line 1507
    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1506
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1511
    .end local v2    # "i":I
    :cond_28
    new-instance v2, Landroid/app/AppOpsManager$OpEntry;

    iget v3, p0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v4, p0, Lcom/android/server/appop/AppOpsService$Op;->mode:I

    invoke-direct {v2, v3, v4, v1}, Landroid/app/AppOpsManager$OpEntry;-><init>(IILjava/util/Map;)V

    return-object v2
.end method

.method createSingleAttributionEntryLocked(Ljava/lang/String;)Landroid/app/AppOpsManager$OpEntry;
    .registers 7
    .param p1, "attributionTag"    # Ljava/lang/String;

    .line 1515
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1517
    .local v0, "numAttributions":I
    new-instance v1, Landroid/util/ArrayMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1518
    .local v1, "attributionEntries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/AppOpsManager$AttributedOpEntry;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_36

    .line 1519
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 1520
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    .line 1521
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$AttributedOp;

    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService$AttributedOp;->createAttributedOpEntryLocked()Landroid/app/AppOpsManager$AttributedOpEntry;

    move-result-object v4

    .line 1520
    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1522
    goto :goto_36

    .line 1518
    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1526
    .end local v2    # "i":I
    :cond_36
    :goto_36
    new-instance v2, Landroid/app/AppOpsManager$OpEntry;

    iget v3, p0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v4, p0, Lcom/android/server/appop/AppOpsService$Op;->mode:I

    invoke-direct {v2, v3, v4, v1}, Landroid/app/AppOpsManager$OpEntry;-><init>(IILjava/util/Map;)V

    return-object v2
.end method

.method evalMode()I
    .registers 4

    .line 1477
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v1, p0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mode:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    move-result v0

    return v0
.end method

.method getMode()I
    .registers 2

    .line 1473
    iget v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mode:I

    return v0
.end method

.method isRunning()Z
    .registers 4

    .line 1530
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1531
    .local v0, "numAttributions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1c

    .line 1532
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$AttributedOp;

    invoke-virtual {v2}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1533
    const/4 v2, 0x1

    return v2

    .line 1531
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1537
    .end local v1    # "i":I
    :cond_1c
    const/4 v1, 0x0

    return v1
.end method

.method removeAttributionsWithNoTime()V
    .registers 3

    .line 1481
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_20

    .line 1482
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$AttributedOp;

    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->hasAnyTime()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 1483
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1481
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1486
    .end local v0    # "i":I
    :cond_20
    return-void
.end method
