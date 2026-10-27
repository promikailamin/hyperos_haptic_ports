.class Lcom/android/server/power/ShutdownCheckPoints$IntentCheckPoint;
.super Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;
.source "ShutdownCheckPoints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownCheckPoints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntentCheckPoint"
.end annotation


# instance fields
.field private final mIntentName:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownCheckPoints$Injector;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "injector"    # Lcom/android/server/power/ShutdownCheckPoints$Injector;
    .param p2, "intentName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "reason"    # Ljava/lang/String;

    .line 334
    invoke-direct {p0, p1, p4}, Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;-><init>(Lcom/android/server/power/ShutdownCheckPoints$Injector;Ljava/lang/String;)V

    .line 335
    iput-object p2, p0, Lcom/android/server/power/ShutdownCheckPoints$IntentCheckPoint;->mIntentName:Ljava/lang/String;

    .line 336
    iput-object p3, p0, Lcom/android/server/power/ShutdownCheckPoints$IntentCheckPoint;->mPackageName:Ljava/lang/String;

    .line 337
    return-void
.end method


# virtual methods
.method dumpDetails(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "printWriter"    # Ljava/io/PrintWriter;

    .line 346
    const-string v0, "Intent: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/android/server/power/ShutdownCheckPoints$IntentCheckPoint;->mIntentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 348
    const-string v0, "Package: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/android/server/power/ShutdownCheckPoints$IntentCheckPoint;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method getOrigin()Ljava/lang/String;
    .registers 2

    .line 341
    const-string v0, "INTENT"

    return-object v0
.end method
