.class public final Lmiui/provider/ExtraTelephony$Threads$Intents;
.super Ljava/lang/Object;
.source "ExtraTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraTelephony$Threads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation


# static fields
.field public static final blacklist THREADS_OBSOLETED_ACTION:Ljava/lang/String; = "android.intent.action.SMS_THREADS_OBSOLETED_ACTION"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 914
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
