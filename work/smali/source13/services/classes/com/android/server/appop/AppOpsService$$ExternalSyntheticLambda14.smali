.class public final synthetic Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/OctConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9

    check-cast p1, Lcom/android/server/appop/AppOpsService;

    check-cast p2, Landroid/util/ArraySet;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    check-cast p5, Ljava/lang/String;

    check-cast p6, Ljava/lang/String;

    check-cast p7, Ljava/lang/Integer;

    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result p7

    check-cast p8, Ljava/lang/Integer;

    invoke-virtual {p8}, Ljava/lang/Integer;->intValue()I

    move-result p8

    move-object p0, p1

    move-object p1, p2

    move p2, p3

    move p3, p4

    move-object p4, p5

    move-object p5, p6

    move p6, p7

    move p7, p8

    invoke-static/range {p0 .. p7}, Lcom/android/server/appop/AppOpsService;->$r8$lambda$6eUUjWoSV6jYQZnTSAKV3P6Zd3U(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method
