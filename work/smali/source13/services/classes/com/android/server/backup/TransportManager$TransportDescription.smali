.class Lcom/android/server/backup/TransportManager$TransportDescription;
.super Ljava/lang/Object;
.source "TransportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/TransportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransportDescription"
.end annotation


# instance fields
.field private configurationIntent:Landroid/content/Intent;

.field private currentDestinationString:Ljava/lang/String;

.field private dataManagementIntent:Landroid/content/Intent;

.field private dataManagementLabel:Ljava/lang/CharSequence;

.field private name:Ljava/lang/String;

.field private final transportDirName:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetconfigurationIntent(Lcom/android/server/backup/TransportManager$TransportDescription;)Landroid/content/Intent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->configurationIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentDestinationString(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->currentDestinationString:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdataManagementIntent(Lcom/android/server/backup/TransportManager$TransportDescription;)Landroid/content/Intent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->dataManagementIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdataManagementLabel(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->dataManagementLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetname(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->name:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettransportDirName(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->transportDirName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputconfigurationIntent(Lcom/android/server/backup/TransportManager$TransportDescription;Landroid/content/Intent;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->configurationIntent:Landroid/content/Intent;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcurrentDestinationString(Lcom/android/server/backup/TransportManager$TransportDescription;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->currentDestinationString:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdataManagementIntent(Lcom/android/server/backup/TransportManager$TransportDescription;Landroid/content/Intent;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->dataManagementIntent:Landroid/content/Intent;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdataManagementLabel(Lcom/android/server/backup/TransportManager$TransportDescription;Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->dataManagementLabel:Ljava/lang/CharSequence;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputname(Lcom/android/server/backup/TransportManager$TransportDescription;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->name:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "transportDirName"    # Ljava/lang/String;
    .param p3, "configurationIntent"    # Landroid/content/Intent;
    .param p4, "currentDestinationString"    # Ljava/lang/String;
    .param p5, "dataManagementIntent"    # Landroid/content/Intent;
    .param p6, "dataManagementLabel"    # Ljava/lang/CharSequence;

    .line 772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 773
    iput-object p1, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->name:Ljava/lang/String;

    .line 774
    iput-object p2, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->transportDirName:Ljava/lang/String;

    .line 775
    iput-object p3, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->configurationIntent:Landroid/content/Intent;

    .line 776
    iput-object p4, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->currentDestinationString:Ljava/lang/String;

    .line 777
    iput-object p5, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->dataManagementIntent:Landroid/content/Intent;

    .line 778
    iput-object p6, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->dataManagementLabel:Ljava/lang/CharSequence;

    .line 779
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;Lcom/android/server/backup/TransportManager$TransportDescription-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/android/server/backup/TransportManager$TransportDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V

    return-void
.end method
