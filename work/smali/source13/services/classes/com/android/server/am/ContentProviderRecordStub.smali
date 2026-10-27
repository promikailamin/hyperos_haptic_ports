.class public interface abstract Lcom/android/server/am/ContentProviderRecordStub;
.super Ljava/lang/Object;
.source "ContentProviderRecordStub.java"


# direct methods
.method public static get()Lcom/android/server/am/ContentProviderRecordStub;
    .registers 1

    .line 8
    const-class v0, Lcom/android/server/am/ContentProviderRecordStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderRecordStub;

    return-object v0
.end method


# virtual methods
.method public abstract isReleaseNeeded(Landroid/content/pm/ApplicationInfo;)Z
.end method
