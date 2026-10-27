.class public final synthetic Lmiui/mqsas/scout/ScoutUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/mqsas/scout/ScoutUtils$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/io/File;)Z
    .registers 3

    iget-object v0, p0, Lmiui/mqsas/scout/ScoutUtils$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    invoke-static {v0, p1}, Lmiui/mqsas/scout/ScoutUtils;->lambda$removeHistoricalDumps$0(Ljava/lang/String;Ljava/io/File;)Z

    move-result p1

    return p1
.end method
