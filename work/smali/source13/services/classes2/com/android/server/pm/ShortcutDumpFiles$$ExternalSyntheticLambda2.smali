.class public final synthetic Lcom/android/server/pm/ShortcutDumpFiles$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/pm/ShortcutDumpFiles;->lambda$dumpAll$2(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
