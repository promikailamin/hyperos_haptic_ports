.class public final synthetic Lcom/android/server/pm/ShortcutDumpFiles$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/io/FileFilter;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .registers 2

    invoke-static {p1}, Lcom/android/server/pm/ShortcutDumpFiles;->lambda$dumpAll$1(Ljava/io/File;)Z

    move-result p1

    return p1
.end method
