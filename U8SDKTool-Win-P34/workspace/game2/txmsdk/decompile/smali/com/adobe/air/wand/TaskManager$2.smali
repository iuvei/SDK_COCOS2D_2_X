.class Lcom/adobe/air/wand/TaskManager$2;
.super Ljava/lang/Object;
.source "TaskManager.java"

# interfaces
.implements Lcom/adobe/air/wand/motionsensor/MotionSensor$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/wand/TaskManager;-><init>(Lcom/adobe/air/wand/message/MessageManager;Landroid/view/Display;Lcom/adobe/air/wand/view/TouchSensor;Lcom/adobe/air/wand/motionsensor/Accelerometer;Lcom/adobe/air/wand/motionsensor/Magnetometer;Lcom/adobe/air/wand/motionsensor/Gyroscope;Landroid/os/Vibrator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/wand/TaskManager;


# direct methods
.method constructor <init>(Lcom/adobe/air/wand/TaskManager;)V
    .locals 0

    iput-object p1, p0, Lcom/adobe/air/wand/TaskManager$2;->this$0:Lcom/adobe/air/wand/TaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSensorChanged([FJ)V
    .locals 6

    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager$2;->this$0:Lcom/adobe/air/wand/TaskManager;

    const-string v4, "acc"

    sget-object v5, Lcom/adobe/air/wand/TaskManager$MessageTitle;->ACCELEROMETER_EVENT:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    move-object v1, p1

    move-wide v2, p2

    # invokes: Lcom/adobe/air/wand/TaskManager;->sendMotionSensorData([FJLjava/lang/String;Lcom/adobe/air/wand/TaskManager$MessageTitle;)V
    invoke-static/range {v0 .. v5}, Lcom/adobe/air/wand/TaskManager;->access$200(Lcom/adobe/air/wand/TaskManager;[FJLjava/lang/String;Lcom/adobe/air/wand/TaskManager$MessageTitle;)V

    return-void
.end method
