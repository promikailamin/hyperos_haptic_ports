.class public final Lmiui/provider/ExtraTelephony$Sms$Intents;
.super Ljava/lang/Object;
.source "ExtraTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraTelephony$Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation


# static fields
.field public static final blacklist DISMISS_NEW_MESSAGE_NOTIFICATION_ACTION:Ljava/lang/String; = "android.provider.Telephony.DISMISS_NEW_MESSAGE_NOTIFICATION"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
