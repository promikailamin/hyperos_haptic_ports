.class public interface abstract Landroid/app/AppOpsManager$OnOpActiveChangedInternalListener;
.super Ljava/lang/Object;
.source "AppOpsManager.java"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpActiveChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnOpActiveChangedInternalListener"
.end annotation


# virtual methods
.method public blacklist onOpActiveChanged(IILjava/lang/String;IZ)V
    .registers 6

    .line 8187
    return-void
.end method

.method public blacklist onOpActiveChanged(IILjava/lang/String;Z)V
    .registers 5

    .line 8185
    return-void
.end method

.method public whitelist onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 5

    .line 8184
    return-void
.end method
