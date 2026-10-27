.class public Landroid/ddm/DdmHandleAppNameHook;
.super Ljava/lang/Object;
.source "DdmHandleAppNameHook.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getAppName()Ljava/lang/String;
    .registers 1

    .line 12
    invoke-static {}, Landroid/ddm/DdmHandleAppName;->getNames()Landroid/ddm/DdmHandleAppName$Names;

    move-result-object v0

    invoke-virtual {v0}, Landroid/ddm/DdmHandleAppName$Names;->getAppName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
