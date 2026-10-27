.class public interface abstract Landroid/companion/virtual/computercontrol/ComputerControlSession$Callback;
.super Ljava/lang/Object;
.source "ComputerControlSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/computercontrol/ComputerControlSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract blacklist onSessionClosed()V
.end method

.method public abstract blacklist onSessionCreated(Landroid/companion/virtual/computercontrol/ComputerControlSession;)V
.end method

.method public abstract blacklist onSessionCreationFailed(I)V
.end method

.method public abstract blacklist onSessionPending(Landroid/content/IntentSender;)V
.end method
