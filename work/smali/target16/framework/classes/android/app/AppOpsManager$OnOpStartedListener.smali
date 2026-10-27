.class public interface abstract Landroid/app/AppOpsManager$OnOpStartedListener;
.super Ljava/lang/Object;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnOpStartedListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppOpsManager$OnOpStartedListener$StartedType;
    }
.end annotation


# static fields
.field public static final blacklist START_TYPE_FAILED:I = 0x0

.field public static final blacklist START_TYPE_RESUMED:I = 0x2

.field public static final blacklist START_TYPE_STARTED:I = 0x1


# virtual methods
.method public abstract blacklist onOpStarted(IILjava/lang/String;Ljava/lang/String;II)V
.end method

.method public blacklist onOpStarted(IILjava/lang/String;Ljava/lang/String;IIIII)V
    .registers 10

    .line 8263
    const/4 p8, 0x2

    if-eq p7, p8, :cond_6

    .line 8264
    invoke-interface/range {p0 .. p6}, Landroid/app/AppOpsManager$OnOpStartedListener;->onOpStarted(IILjava/lang/String;Ljava/lang/String;II)V

    .line 8266
    :cond_6
    return-void
.end method

.method public blacklist onOpStarted(IILjava/lang/String;Ljava/lang/String;IIIIII)V
    .registers 11

    .line 8293
    if-nez p5, :cond_a

    .line 8294
    move-object p5, p4

    move-object p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    invoke-interface/range {p1 .. p10}, Landroid/app/AppOpsManager$OnOpStartedListener;->onOpStarted(IILjava/lang/String;Ljava/lang/String;IIIII)V

    .line 8297
    :cond_a
    return-void
.end method
