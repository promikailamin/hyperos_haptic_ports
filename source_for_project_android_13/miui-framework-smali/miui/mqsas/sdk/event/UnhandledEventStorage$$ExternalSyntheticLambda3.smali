.class public final synthetic Lmiui/mqsas/sdk/event/UnhandledEventStorage$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/io/FileFilter;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/io/File;)Z
    .registers 2

    invoke-static {p1}, Lmiui/mqsas/sdk/event/UnhandledEventStorage;->lambda$listFiles$3(Ljava/io/File;)Z

    move-result p1

    return p1
.end method
