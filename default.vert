		#version 330 core
		
		//Positions/coords
		layout (location = 0) in vec3 aPos;
		//Colors
		layout (location = 1) in vec3 aColor;
		//Texture coords
		layout (location = 2) in vec2 aTex;

		//Outputs the color for the frag shader
		out vec3 color;
		//Outputs the texture coords to the frag shader
		out vec2 texCoord;

		//Controls the scale of the vertices
		uniform float scale;




		uniform mat4 model;
		uniform mat4 view;
		uniform mat4 proj;



		void main()
		{
		   // Outputs the positions (coordinates) of all vertices
			gl_Position = proj * view * model * vec4(aPos, 1.0);
		   //Assigns colors from the Vertex Data to "color"
		   color = aColor;
		   texCoord = aTex;
		}


