.class Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;
.super Ljava/lang/Object;
.source "ContextHubClientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/contexthub/ContextHubClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegistrationRecord"
.end annotation


# instance fields
.field private final mAction:I

.field private final mBroker:Ljava/lang/String;

.field private final mTimestamp:J

.field final synthetic this$0:Lcom/android/server/location/contexthub/ContextHubClientManager;


# direct methods
.method constructor <init>(Lcom/android/server/location/contexthub/ContextHubClientManager;Ljava/lang/String;I)V
    .registers 6
    .param p2, "broker"    # Ljava/lang/String;
    .param p3, "action"    # I

    .line 114
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;->this$0:Lcom/android/server/location/contexthub/ContextHubClientManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;->mBroker:Ljava/lang/String;

    .line 116
    iput p3, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;->mAction:I

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;->mTimestamp:J

    .line 118
    return-void
.end method


# virtual methods
.method dump(Landroid/util/proto/ProtoOutputStream;)V
    .registers 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 121
    iget-wide v0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;->mTimestamp:J

    const-wide v2, 0x10300000001L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 122
    iget v0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;->mAction:I

    const-wide v1, 0x10500000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 123
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;->mBroker:Ljava/lang/String;

    const-wide v1, 0x10900000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 124
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 128
    const-string v0, ""

    .line 129
    .local v0, "out":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/location/contexthub/ContextHubClientManager;->-$$Nest$sfgetDATE_FORMAT()Ljava/text/DateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;->mTimestamp:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;->mAction:I

    if-nez v2, :cond_38

    const-string v2, "+ "

    goto :goto_3a

    :cond_38
    const-string v2, "- "

    :goto_3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;->mBroker:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;->mAction:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6d

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (cancelled)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    :cond_6d
    return-object v0
.end method
